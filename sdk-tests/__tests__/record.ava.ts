// import { Runtime, NearAccount, stateSize } from "..";
import { Workspace, NearAccount, toYocto } from "near-workspaces-ava";

class User {
  constructor(
    public name: string,
    public balance: string,
    public has_claimed: boolean
  ) { }
}

const RECORD = "record.test.near";
const ALICE = "alice.test.near";

const user1 = new User("user1", "0", false);
const user2 = new User("user2", "0", false);
const user3 = new User("user3", "0", false);

const workspace = Workspace.init(async ({ root }) => {
  const alice = await root.createAccount(ALICE);
  const record = await root.createAndDeploy(
    RECORD,
    __dirname + "/../build/debug/record.wasm"
  );
  return { alice, record };
});

workspace.test("add user", (async (t, { alice, record }) => {
  let res = <boolean>(
    await alice.call<boolean>(RECORD, "add_user", { name: user1.name })
  );
  t.true(res);

  // check if it exists
  let u = <User>(
    await alice.call<User>(RECORD, "get_user", { name: user1.name })
  );
  t.is(u.name, user1.name);

  // adding record with same pk should cause error
  const errFn = async () =>
    await alice.call<boolean>(RECORD, "add_user", { name: user1.name });
  (await t.throwsAsync(errFn(), { message: new RegExp("User already exists") }));
}));

workspace.test("get user", async (t, { alice, record }) => {
  await alice.call<boolean>(RECORD, "add_user", {
    name: user1.name,
  });
  let u = <User>(
    await alice.call<User>(RECORD, "get_user", { name: user1.name })
  );
  t.is(u.name, user1.name);

  // throw if user doesn't exists
  const errFn = async () =>
    await alice.call<boolean>(RECORD, "get_user", { name: "abc" });
  (await t.throwsAsync(errFn(), { message: new RegExp("User not found") }));
});

workspace.test("delete user", async (t, { alice, record }) => {
  await alice.call<boolean>(RECORD, "add_user", {
    name: user1.name,
  });

  let res = <boolean>(
    await alice.call<boolean>(RECORD, "delete_user", { name: user1.name })
  );
  t.true(res);

  // throw if user doesn't exists
  const errFn = async () =>
    await alice.call<boolean>(RECORD, "delete_user", { name: "abc" });
  (await t.throwsAsync(errFn(), { message: new RegExp("User not found") }));
});


workspace.test("claim user", async (t, { alice, record }) => {
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
  t.true(u1.has_claimed);

  let u2 = <User>(
    await alice.call<User>(RECORD, "claim", { name: user2.name })
  );
  t.true(u2.has_claimed);

  let claimed = <User[]>await alice.call<User[]>(RECORD, "getClaimed", {});
  t.is(claimed.length, 2);
});

workspace.test("search user", async (t, { alice, record }) => {
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
  t.is(res[0]?.name, user1.name);
  t.is(res[1], null);
});


workspace.test("empty user", (async (t, { alice, record }) => {
  const errFn = async () =>
    await alice.call<boolean>(RECORD, "testEmptyFail", {});
  (await t.throwsAsync(errFn(), { message: new RegExp("NotImplemented") }));
}));


workspace.test("manual primary key user", async (t, { alice, record }) => {
  await alice.call<boolean>(RECORD, "testManualPrimaryKey", {});
});


