// import { Runtime, Account, stateSize } from "..";
import { Runner, Account, toYocto } from "near-runner";
import BN from "bn.js";

class Word {
  constructor(public text: string) {}
}

const SENTENCES = "sentences.test.near";
const WORDS = "words.test.near";
const ALICE = "alice.test.near";

jest.setTimeout(150_000);

describe("cross contract calls", () => {
  let runner: Runner;
  beforeAll(async () => {
    // sandboxRunner = await createSandbox(async (sandbox: SandboxRuntime) => {
    //   await sandbox.createAccount(ALICE);
    //   await sandbox.createAndDeploy(
    //     SENTENCES,
    //     __dirname + "/../build/debug/sentences.wasm"
    //   );
    //   await sandbox.createAndDeploy(
    //     WORDS,
    //     __dirname + "/../build/debug/words.wasm"
    //   );
    // });
    runner = await Runner.create(async ({ root }) => {
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
  });

  async function addWord(alice: Account, hello: string) {
    return await alice.call(SENTENCES, "SetWord", { word: { text: hello } });
  }

  test("single promise", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   const alice = sandbox.getAccount(ALICE);
    //   let res = await alice.call(SENTENCES, "reverseWordOne", {});
    //   expect(res.text).toBe("elpmas");
    // });
    await runner.run(async ({ alice, words, sentences }) => {
      let res = await alice.call(SENTENCES, "reverseWordOne", {});
      expect(res.text).toBe("elpmas");
    });
  });

  test("promise + then with no arguments", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    // let res = alice.call_other(SENTENCES, "reverseWordTwo");
    // expect(res.return_data).toBe(true);
    // });
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

  test("promise + then with arguments", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    // let res = alice.call_other(SENTENCES, "reverseWordThree");
    // expect(res.return_data).toBe(true);
    // });
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

  test("add to storage", async () => {
    // await sandboxRunner(async (sandbox: SandboxRuntime) => {
    //   addWord("hello");
    //   expect(sentences.storage_usage).toBeGreaterThan(0);
    // });
    await runner.run(async ({ alice, words, sentences }) => {
      await addWord(alice, "hello");
      expect(
        (await sentences.najAccount.state()).storage_usage
      ).toBeGreaterThan(0);
    });
  });

  test("read from storage with default", async () => {
    // const word = sentences.view("GetWord").return_data;
    // expect(word.text).toBe("DEFAULT");
    // expect(sentences.state["word"]).toBe(undefined);

    await runner.run(async ({ alice, words, sentences }) => {
      const word: any = await sentences.view("GetWord");
      expect(word.text).toBe("DEFAULT");
      expect((await sentences.viewState()).get("word").data).toEqual([]);
    });
  });

  test("read from storage", async () => {
    // addWord("hello");
    // const word = sentences.view("GetWord").return_data;
    // expect(word.text).toBe("hello");
    // expect(sentences.state["word"]).toStrictEqual(word);

    await runner.run(async ({ alice, words, sentences }) => {
      await addWord(alice, "hello");
      const word: Word = await sentences.view("GetWord");
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

  // test("setting state", () => {
  //   let state = { word: { text: "hello" } };
  //   sentences.state = state;
  //   sentences.reset();
  //   let { result } = addWord("hello");
  //   expect(result.state).toStrictEqual(state);
  // });

  test("getting view with arg", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      const res: Word = await words.view("reverse", {
        word: { text: "hello" },
      });
      expect(res.text).toBe("olleh");
    });
  });

  test("get block_timestanp", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await alice.call(sentences, "getBlock_timestamp", {});
    });
  });

  test("contract promise batch", async () => {
    await runner.run(async ({ alice, words, sentences }) => {
      await alice.call(sentences, "contractPromiseBatch", {});
    });
  });

  test("contract should throw if attached deposit and non-payable method", async () => {
    // let res = alice.call_other(
    //   SENTENCES,
    //   "nonPayableFunction",
    //   {},
    //   10000000000000,
    //   "10"
    // );
    // expect(
    //   res.err.FunctionCallError.HostError.GuestPanic.panic_msg.startsWith(
    //     "Method doesn't accept deposit"
    //   )
    // ).toBe(true);

    await runner.run(async ({ alice, words, sentences }) => {
      let res = async () =>
        await alice.call(
          SENTENCES,
          "nonPayableFunction",
          {},
          { attachedDeposit: toYocto("10") }
        );
      await expect(res()).rejects.toThrowError("Method doesn't accept deposit");
    });
  });

  test("contract should throw if attached deposit is not 1 yoctoNEAR and one yocto method", async () => {
    // let res = alice.call_other(
    //   SENTENCES,
    //   "oneYoctoFunction",
    //   {},
    //   10000000000000,
    //   "2"
    // );
    // expect(res.err.FunctionCallError.HostError.GuestPanic.panic_msg).toEqual(
    //   expect.stringContaining(
    //     "Requires attached deposit of exactly 1 yoctoNEAR"
    //   )
    // );

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
  });

  test("exported from submodule", async () => {
    // const str = "hello";
    // const res = words.view("capitalize", { s: str }).result.outcome as any;
    // expect(res.return_data.Value.substr(1, str.length)).toStrictEqual(
    //   str.toUpperCase()
    // );
    await runner.run(async ({ alice, words, sentences }) => {
      const str = "hello";
      const res = await words.view("capitalize", { s: str });
      expect(res).toStrictEqual(str.toUpperCase());
    });
  });
});
