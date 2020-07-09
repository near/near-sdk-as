import { storage } from "../..";
class Foo {}
storage.getPrimitive<Foo>("hello", new Foo());
