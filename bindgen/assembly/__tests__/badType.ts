import { storage } from "near-sdk-as";
class Foo {}
storage.getPrimitive<Foo>("hello", new Foo());
