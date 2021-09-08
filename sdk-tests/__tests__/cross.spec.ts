// import { Runtime, NearAccount, stateSize } from "..";
import { Runner, NearAccount, toYocto } from "near-runner";
import BN from "bn.js";

class Word {
  constructor(public text: string) {}
}

const SENTENCES = "sentences.test.near";
const WORDS = "words.test.near";
const ALICE = "alice.test.near";

describe("cross contract calls", () => {
  jest.setTimeout(150_000);

  const runner = Runner.create(async ({ root }) => {
    const alice = await root.createAccount(ALICE);
    const words = await root.createAndDeploy(
      WORDS,
      __dirname + "/../build/debug/words.wasm"
    );
    const sentences = await root.createAndDeploy(
      SENTENCES,
      __dirname + "/../build/debug/sentences.wasm"
    );
    return { alice, words, sentences };
  });

  async function addWord(alice: NearAccount, hello: string) {
    return await alice.call(SENTENCES, "SetWord", { word: { text: hello } });
  }

  test.concurrent("single promise", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      let res = <Word>await alice.call<Word>(SENTENCES, "reverseWordOne", {});
      expect(res.text).toBe("elpmas");
    });
  });

  test.concurrent("promise + then with no arguments", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      let res = await alice.call(
        SENTENCES,
        "reverseWordTwo",
        {},
        { gas: new BN(100 * 10 ** 12) }
      );
      expect(res).toBe(true);
    });
  });

  test.concurrent("promise + then with arguments", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      let res = await alice.call(
        SENTENCES,
        "reverseWordThree",
        {},
        { gas: new BN(120 * 10 ** 12) }
      );
      expect(res).toBe(true);
    });
  });

  test.concurrent("add to storage", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await addWord(alice, "hello");
      expect((await sentences.accountView()).storage_usage).toBeGreaterThan(0);
    });
  });

  test.concurrent("read from storage with default", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      const word: any = await sentences.view("GetWord");
      expect(word.text).toBe("DEFAULT");
      expect((await sentences.viewState()).get("word").data).toEqual([]);
    });
  });

  test.concurrent("read from storage", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await addWord(alice, "hello");
      const word: Word = <Word>await sentences.view("GetWord");
      const state = await sentences.viewState();
      const schema = new Map([
        [
          Word,
          {
            kind: "struct",
            fields: [["text", "string"]],
          },
        ],
      ]);

      // Get raw value
      const wordFromContract = state.get("word", { schema, type: Word });

      expect(word.text).toBe("hello");
      expect(wordFromContract).toEqual(word);
    });
  });

  // test.concurrent("setting state", () => {
  //   let state = { word: { text: "hello" } };
  //   sentences.state = state;
  //   sentences.reset();
  //   let { result } = addWord("hello");
  //   expect(result.state).toStrictEqual(state);
  // });

  test.concurrent("getting view with arg", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      const res: Word = <Word>await words.view("reverse", {
        word: { text: "hello" },
      });
      expect(res.text).toBe("olleh");
    });
  });

  test.concurrent("get block_timestanp", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await alice.call(sentences, "getBlock_timestamp", {});
    });
  });

  test.concurrent("contract promise batch", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await alice.call(sentences, "contractPromiseBatch", {});
    });
  });

  test.concurrent(
    "contract should throw if attached deposit and non-payable method",
    async () => {
      await runner.run(async ({ alice, words, sentences }) => {
        let res = async () =>
          await alice.call(
            SENTENCES,
            "nonPayableFunction",
            {},
            { attachedDeposit: toYocto("10") }
          );
        await expect(res()).rejects.toThrowError(
          "Method doesn't accept deposit"
        );
      });
    }
  );

  test.concurrent(
    "contract should throw if attached deposit is not 1 yoctoNEAR and one yocto method",
    async () => {
      await runner.run(async ({ alice, words, sentences }) => {
        let res = async () =>
          await alice.call(
            SENTENCES,
            "oneYoctoFunction",
            {},
            { attachedDeposit: toYocto("2") }
          );
        await expect(res()).rejects.toThrowError(
          "Requires attached deposit of exactly 1 yoctoNEAR"
        );
      });
    }
  );

  test.concurrent("exported from submodule", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      const str = "hello";
      const res = await words.view("capitalize", { s: str });
      expect(res).toStrictEqual(str.toUpperCase());
    });
  });
});
