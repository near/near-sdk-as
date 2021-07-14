/// <reference types="near-sdk-as/assembly/as_types" />
declare function ExternalContract<T extends { new (...args: any[]): {} }>(constructor: T): T & any;