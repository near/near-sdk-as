// import { Runtime, NearAccount, stateSize } from "..";
import { Runner, NearAccount, toYocto } from "near-runner";

class User {
  constructor(
    public name: string,
    public balance: string,
    public has_claimed: bool
  ) {}
}

const RECORD = "record.test.near";
const ALICE = "alice.test.near";

const user1 = new User("user1", "0", false);
const user2 = new User("user2", "0", false);
const user3 = new User("user3", "0", false);

describe("Active Record", () => {
  jest.setTimeout(150_000);

  const runner = Runner.create(async ({ root }) => {
    const alice = await root.createAccount(ALICE);
    const record = await root.createAndDeploy(
      RECORD,
      __dirname + "/../build/debug/record.wasm"
    );
    return { alice, record };
  });

  test.concurrent("add user", async () => {
    await runner.run(async ({ alice, record }) => {
      let res = <boolean>(
        await alice.call<boolean>(RECORD, "add_user", { name: user1.name })
      );
      expect(res).toBe(true);

      // check if it exists
      let u = <User>(
        await alice.call<User>(RECORD, "get_user", { name: user1.name })
      );
      expect(u.name).toBe(user1.name);

      // adding record with same pk should cause error
      const errFn = async () =>
        await alice.call<boolean>(RECORD, "add_user", { name: user1.name });
      await expect(errFn()).rejects.toThrowError("User already exists");
    });
  });

  test.concurrent("get user", async () => {
    await runner.run(async ({ alice, record }) => {
      await alice.call<boolean>(RECORD, "add_user", {
        name: user1.name,
      });
      let u = <User>(
        await alice.call<User>(RECORD, "get_user", { name: user1.name })
      );
      expect(u.name).toBe(user1.name);

      // throw if user doesn't exists
      const errFn = async () =>
        await alice.call<boolean>(RECORD, "get_user", { name: "abc" });
      await expect(errFn()).rejects.toThrowError("User not found");
    });
  });

  test.concurrent("delete user", async () => {
    await runner.run(async ({ alice, record }) => {
      await alice.call<boolean>(RECORD, "add_user", {
        name: user1.name,
      });

      let res = <boolean>(
        await alice.call<boolean>(RECORD, "delete_user", { name: user1.name })
      );
      expect(res).toBe(true);

      // throw if user doesn't exists
      const errFn = async () =>
        await alice.call<boolean>(RECORD, "delete_user", { name: "abc" });
      await expect(errFn()).rejects.toThrowError("User not found");
    });
  });

  test.concurrent("claim user", async () => {
    await runner.run(async ({ alice, record }) => {
      await alice.call<boolean>(RECORD, "add_user", {
        name: user1.name,
      });
      await alice.call<boolean>(RECORD, "add_user", {
        name: user2.name,
      });
      await alice.call<boolean>(RECORD, "add_user", {
        name: user3.name,
      });

      let u1 = <User>(
        await alice.call<User>(RECORD, "claim", { name: user1.name })
      );
      expect(u1.has_claimed).toBe(true);

      let u2 = <User>(
        await alice.call<User>(RECORD, "claim", { name: user2.name })
      );
      expect(u2.has_claimed).toBe(true);

      let claimed = <User[]>await alice.call<User[]>(RECORD, "getClaimed", {});
      expect(claimed.length).toBe(2);
    });
  });

  test.concurrent("search user", async () => {
    await runner.run(async ({ alice, record }) => {
      await alice.call<boolean>(RECORD, "add_user", {
        name: user1.name,
      });
      let res = <Array<User | null>>await alice.call<Array<User | null>>(
        RECORD,
        "searchUser",
        {
          names: [user1.name, user2.name],
        }
      );
      expect(res[0]?.name).toBe(user1.name);
      expect(res[1]).toBeNull();
    });
  });

  test.concurrent("empty user", async () => {
    await runner.run(async ({ alice, record }) => {
      const errFn = async () =>
        await alice.call<boolean>(RECORD, "testEmptyFail", {});
      await expect(errFn()).rejects.toThrowError("NotImplemented");
    });
  });

  test.concurrent("manual primary key user", async () => {
    await runner.run(async ({ alice, record }) => {
      await alice.call<boolean>(RECORD, "testManualPrimaryKey", {});
    });
  });
});
