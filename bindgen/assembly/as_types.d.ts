
declare function ExternalContract<T extends { new (...args: any[]): {} }>(constructor: T): T & any;