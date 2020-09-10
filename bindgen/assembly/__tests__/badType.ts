import { storage } from "near-sdk-core";
class Foo {}
storage.getPrimitive<Foo>("hello", new Foo());
