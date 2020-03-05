(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i64_i64_i64_=>_none (func (param i32 i64 i64 i64 i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "log_utf8" (func $~lib/near-runtime-ts/runtime_api/runtime_api.log_utf8 (param i64 i64)))
 (import "env" "input" (func $~lib/near-runtime-ts/runtime_api/runtime_api.input (param i64)))
 (import "env" "register_len" (func $~lib/near-runtime-ts/runtime_api/runtime_api.register_len (param i64) (result i64)))
 (import "env" "panic" (func $~lib/near-runtime-ts/runtime_api/runtime_api.panic))
 (import "env" "read_register" (func $~lib/near-runtime-ts/runtime_api/runtime_api.read_register (param i64 i64)))
 (import "env" "value_return" (func $~lib/near-runtime-ts/runtime_api/runtime_api.value_return (param i64 i64)))
 (memory $0 1)
 (data (i32.const 16) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 48) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 80) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 112) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 144) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 208) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 352) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00b\00l\00o\00c\00k\00_\00i\00n\00d\00e\00x\00_\00s\00e\00e\00d\00e\00d\00_\00a\00t\00")
 (data (i32.const 416) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00k\00e\00y\00")
 (data (i32.const 480) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00i\00n\00d\00e\00x\00_\00k\00e\00y\00")
 (data (i32.const 544) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 592) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00 \00t\00e\00s\00t\00")
 (data (i32.const 640) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 688) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 752) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 800) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 832) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00*\00\00\00\0b\00\00\00")
 (data (i32.const 864) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 896) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 960) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 976) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1040) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1104) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 1136) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00`\04\00\00")
 (data (i32.const 1168) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00W\00o\00r\00l\00d\00")
 (data (i32.const 1200) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\a0\04\00\00")
 (data (i32.const 1232) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1280) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 1328) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00")
 (data (i32.const 1360) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00B\00e\00f\00o\00r\00e\00:\00 \00")
 (data (i32.const 1392) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00.\00t\00s\00")
 (data (i32.const 1456) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1488) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 1584) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1648) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 1680) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 1712) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1744) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 1776) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1808) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 1840) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1872) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 1904) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1936) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 1968) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 2064) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 2096) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2512) "\10\00\00\00\01\00\00\00\n\00\00\00\10\00\00\00@\08\00\00@\08\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 2544) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2640) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 2672) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 2704) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 2736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 2768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 2800) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 2832) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 2864) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00u\006\004\00_\00z\00e\00r\00o\00")
 (data (i32.const 2896) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 2928) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 2960) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 2992) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 3040) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 3072) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 3104) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 3216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 3248) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 3296) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 3328) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 3360) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 3392) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 3488) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 3568) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 3616) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 3664) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00A\00r\00r\00")
 (data (i32.const 3696) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 3728) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 3792) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 3888) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s\00")
 (data (i32.const 3968) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 4016) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 4096) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 4176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 4208) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 4240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 4272) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 4304) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 4336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 4368) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 4432) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 4512) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 4560) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 4624) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 4688) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 4736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 4768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 4800) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 4864) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00b\00i\00n\00d\00g\00e\00n\00-\00a\00s\00/\00i\00n\00d\00e\00x\00.\00t\00s\00")
 (data (i32.const 4944) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 5008) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 5056) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00t\00y\00p\00e\00 \00")
 (data (i32.const 5088) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00F\00o\00o\00B\00a\00r\00")
 (data (i32.const 5120) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 5168) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 5200) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 5248) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 5296) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 5344) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 5424) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 5456) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r\00")
 (data (i32.const 5520) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 5552) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 5584) "~\00\00\00\01\00\00\00\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 5728) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 5760) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 5792) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 5840) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 5872) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 5936) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 5984) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00>\00")
 (data (i32.const 6096) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 6176) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00")
 (data (i32.const 6256) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\003\002\00>\00")
 (data (i32.const 6304) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00i\003\002\00>\00")
 (data (i32.const 6352) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\001\002\008\00")
 (data (i32.const 6384) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 6432) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 6496) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 6592) "\10\00\00\00\01\00\00\00\1d\00\00\00\10\00\00\00p\19\00\00p\19\00\00K\00\00\00K\00\00\00")
 (data (i32.const 6624) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00/\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00>\00")
 (data (i32.const 6720) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\006\004\00>\00")
 (data (i32.const 6768) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00A\00f\00t\00e\00r\00:\00 \00 \00")
 (data (i32.const 6800) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 6848) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00t\00r\00")
 (data (i32.const 6880) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 6928) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00N\00u\00l\00l\00a\00b\00l\00e\00s\00")
 (data (i32.const 6976) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00a\00b\00l\00e\002\00.\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00 \00t\00o\00 \00b\00e\00 \00n\00u\00l\00l\00")
 (data (i32.const 7072) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7088) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\15\cd[\07\00\00\00\00")
 (data (i32.const 7120) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7136) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 7184) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\"\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00\"\00")
 (data (i32.const 7248) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00T\00e\00s\00t\00 \00P\00a\00s\00s\00e\00d\00")
 (data (i32.const 7296) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 7328) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00")
 (data (i32.const 7408) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 7440) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 7504) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 7552) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 7600) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00A\00n\00o\00t\00h\00e\00r\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 7664) "\\\00\00\00\01\00\00\00\01\00\00\00\\\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00>\00")
 (data (i32.const 7776) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00 \00W\00o\00r\00l\00d\00")
 (data (i32.const 7808) "$\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93 \00\00\02\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00\0f\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\11\00\00\00\98 A\00\00\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\11\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $assembly/main/convertFoobars~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/storage/storage (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 32))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 64))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 96))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 128))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_RATING_SUFFIX i32 (i32.const 160))
 (global $~lib/near-runtime-ts/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $~lib/near-runtime-ts/contract/context (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/base64/base64.PADCHAR i32 (i32.const 192))
 (global $~lib/near-runtime-ts/base64/base64.ALPHA i32 (i32.const 224))
 (global $~lib/near-runtime-ts/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 368))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_KEY i32 (i32.const 432))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 496))
 (global $~lib/as-bignum/utils/HEX_CHARS i32 (i32.const 560))
 (global $~lib/as-bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 2656))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 2688))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 2560))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/as-bignum/integer/u128/HEX_CHARS i32 (i32.const 560))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/as-bignum/utils/RadixCharsTable i32 (i32.const 6608))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 7808))
 (global $~lib/heap/__heap_base i32 (i32.const 8100))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "runTest" (func $assembly/test/runTest))
 (export "convertFoobars" (func $assembly/test/__wrapper_convertFoobars))
 (export "getStringArrayLength" (func $assembly/test/__wrapper_getStringArrayLength))
 (export "rewrapFoobar" (func $assembly/test/__wrapper_rewrapFoobar))
 (export "unwrapFoobar" (func $assembly/test/__wrapper_unwrapFoobar))
 (export "stringOrNull" (func $assembly/test/__wrapper_stringOrNull))
 (export "stringAliasTest" (func $assembly/test/__wrapper_stringAliasTest))
 (export "classOrNull" (func $assembly/test/__wrapper_classOrNull))
 (export "classAndNull" (func $assembly/test/__wrapper_classAndNull))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 7 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/string/String.UTF8.byteLength (; 9 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $4
  local.get $1
  i32.const 0
  i32.ne
  local.set $0
  loop $while-continue|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $2
     i32.load16_u
     local.tee $3
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $3
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $2
       i32.const 2
       i32.add
       local.get $4
       i32.lt_u
       i32.const 0
       local.get $3
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       select
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 10 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $9
    local.get $9
    if
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 11 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 656
   i32.const 704
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $2
  local.get $4
  i32.load
  i32.ne
  drop
  local.get $2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 12 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 6
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/util/memory/memcpy (; 13 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/string/String.UTF8.encode (; 15 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $5
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  local.tee $0
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $4
  i32.add
  local.get $1
  i32.const 0
  i32.ne
  i32.sub
  local.set $6
  local.get $4
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $6
   i32.lt_u
   if
    local.get $3
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $2
     i32.store8
     local.get $0
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 2
      i32.add
      local.get $5
      i32.lt_u
      i32.const 0
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $3
       i32.load16_u offset=2
       local.tee $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $0
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.get $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        br $while-continue|0
       end
      end
      local.get $0
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $0
      i32.const 3
      i32.add
     end
    end
    local.set $0
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $3
  local.get $5
  i32.gt_u
  if
   i32.const 0
   i32.const 768
   i32.const 703
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  if
   local.get $0
   i32.const 0
   i32.store8
  end
  local.get $4
 )
 (func $~lib/near-runtime-ts/util/util.stringToBytes (; 16 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  i32.sub
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/near-runtime-ts/logging/logging.log<~lib/string/String> (; 17 ;) (param $0 i32)
  local.get $0
  call $~lib/near-runtime-ts/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-runtime-ts/runtime_api/runtime_api.log_utf8
 )
 (func $assembly/model/FooBar#constructor (; 18 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 68
   i32.const 7
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i64.const 4294967297
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  i64.const -64
  i64.store offset=24
  local.get $0
  i32.const 0
  i32.store8 offset=32
  local.get $0
  i32.const 816
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
  i32.const 0
  i32.store offset=56
  local.get $0
  i32.const 0
  i32.store offset=60
  local.get $0
  i32.const 0
  i32.store offset=64
  local.get $0
 )
 (func $~lib/rt/__allocArray (; 19 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $4
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/string/String#get:length (; 20 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (; 21 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 976
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
 )
 (func $~lib/util/string/compareImpl (; 22 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $2
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   loop $do-continue|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $4
     i32.const 4
     i32.sub
     local.tee $4
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $0
   i32.const 1
   i32.sub
   local.set $4
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $3
    i32.ne
    if
     local.get $0
     local.get $3
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 23 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  local.get $2
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#indexOf (; 24 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/string/String#get:length
  local.tee $4
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.set $2
  local.get $3
  local.get $4
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.le_s
   if
    local.get $0
    local.get $2
    local.get $1
    i32.const 0
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $~lib/near-runtime-ts/base64/base64.getByte64 (; 25 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 224
  local.get $0
  local.get $1
  call $~lib/string/String#charAt
  i32.const 0
  call $~lib/string/String#indexOf
 )
 (func $~lib/typedarray/Uint8Array#__set (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 992
   i32.const 1056
   i32.const 163
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/near-runtime-ts/base64/base64.decode (; 27 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/string/String#get:length
  local.tee $4
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   return
  end
  i32.const 0
  local.get $0
  local.get $4
  i32.const 1
  i32.sub
  call $~lib/string/String#charAt
  i32.const 192
  call $~lib/string/String.__eq
  if
   i32.const 1
   local.set $7
   local.get $0
   local.get $4
   i32.const 2
   i32.sub
   call $~lib/string/String#charAt
   i32.const 192
   call $~lib/string/String.__eq
   if
    i32.const 2
    local.set $7
   end
   local.get $4
   i32.const 4
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 3
  i32.and
  if (result i32)
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 1
   i32.add
   i32.const 3
   i32.mul
  else
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 3
   i32.mul
  end
  i32.const 3
  local.get $7
  i32.sub
  i32.const 0
  local.get $7
  i32.const 0
  i32.gt_s
  select
  i32.add
  call $~lib/typedarray/Uint8Array#constructor
  local.set $6
  i32.const 0
  local.set $3
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 3
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.or
    local.set $5
    local.get $6
    local.get $3
    local.tee $1
    i32.const 1
    i32.add
    local.set $3
    local.get $1
    local.get $5
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    local.get $3
    local.tee $1
    i32.const 1
    i32.add
    local.set $3
    local.get $1
    local.get $5
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    local.get $3
    local.tee $1
    i32.const 1
    i32.add
    local.set $3
    local.get $1
    local.get $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  block $break|1
   block $case1|1
    local.get $7
    local.tee $1
    i32.const 1
    i32.ne
    if
     local.get $1
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $0
    local.get $2
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.set $5
    local.get $6
    local.get $3
    local.tee $1
    i32.const 1
    i32.add
    local.set $3
    local.get $1
    local.get $5
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    local.get $3
    local.set $1
    local.get $1
    local.get $5
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    br $break|1
   end
   local.get $0
   local.get $2
   call $~lib/near-runtime-ts/base64/base64.getByte64
   i32.const 18
   i32.shl
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   call $~lib/near-runtime-ts/base64/base64.getByte64
   i32.const 12
   i32.shl
   i32.or
   local.set $5
   local.get $6
   local.get $3
   local.set $1
   local.get $1
   local.get $5
   i32.const 16
   i32.shr_u
   call $~lib/typedarray/Uint8Array#__set
  end
  local.get $6
 )
 (func $~lib/as-bignum/integer/u128/u128#constructor (; 28 ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 29 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 12
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/rt/stub/__realloc (; 30 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load
  local.set $3
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 46
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.add
  global.get $~lib/rt/stub/offset
  i32.eq
  local.set $4
  local.get $1
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $4
   if
    local.get $1
    i32.const 1073741808
    i32.gt_u
    if
     unreachable
    end
    local.get $0
    local.get $5
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $2
    local.get $5
    i32.store
   else
    local.get $5
    local.tee $6
    local.get $3
    i32.const 1
    i32.shl
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_u
    select
    local.get $2
    i32.load offset=8
    call $~lib/rt/stub/__alloc
    local.set $6
    local.get $6
    local.get $0
    local.get $2
    i32.load offset=12
    call $~lib/memory/memory.copy
    local.get $6
    local.tee $0
    i32.const 16
    i32.sub
    local.set $2
   end
  else
   local.get $4
   if
    local.get $0
    local.get $5
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $2
    local.get $5
    i32.store
   end
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/ensureSize (; 31 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 656
    i32.const 1248
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/stub/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 32 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 992
    i32.const 1248
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  local.get $2
  i32.ne
  if
   local.get $0
   local.get $2
   i32.store
  end
 )
 (func $~lib/array/Array<i32>#constructor (; 33 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 11
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 34 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 8
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#push (; 35 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 36 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 15
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 10
  call $~lib/array/Array<i32>#constructor
  local.set $2
  local.get $1
  i32.load
  drop
  local.get $2
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $0
  i32.load offset=4
  drop
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/JSONEncoder#constructor (; 37 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 14
   call $~lib/rt/stub/__alloc
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
 )
 (func $~lib/array/Array<i32>#__get (; 38 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 40 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
 )
 (func $~lib/array/Array<i32>#__set (; 41 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 992
    i32.const 1248
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/string/String.__ne (; 42 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/string/String#charCodeAt (; 43 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/string/String#substring (; 44 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $4
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $4
  local.tee $3
  local.get $1
  local.get $3
  i32.lt_s
  select
  local.set $5
  local.get $2
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $3
  local.get $1
  local.get $3
  i32.lt_s
  select
  local.set $3
  local.get $5
  local.tee $1
  local.get $3
  local.get $1
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  local.get $3
  local.get $1
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $3
  local.get $2
  i32.sub
  local.tee $1
  i32.eqz
  if
   i32.const 976
   return
  end
  i32.const 0
  local.get $3
  local.get $4
  i32.const 1
  i32.shl
  i32.eq
  local.get $2
  select
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $3
  local.get $0
  local.get $2
  i32.add
  local.get $1
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/util/number/decimalCount32 (; 45 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 46 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  i32.const 2528
  i32.load offset=4
  local.set $3
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $4
   local.get $4
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $5
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $6
    local.get $5
    local.set $1
    local.get $6
    i32.const 100
    i32.div_u
    local.set $7
    local.get $6
    i32.const 100
    i32.rem_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $3
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $10
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $9
    local.get $10
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $4
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $11
   local.get $4
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $11
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 47 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 2080
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/string/String#concat (; 48 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   local.get $1
   i32.const 2560
   local.tee $2
   i32.ne
   if (result i32)
    i32.const 2560
   else
    local.get $2
   end
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 976
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/string/String.__concat (; 49 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 2560
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 50 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1600
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  i32.const 0
  local.set $4
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/string/String#get:length
   i32.lt_s
   if
    local.get $1
    local.get $3
    call $~lib/string/String#charCodeAt
    local.tee $2
    i32.const 32
    i32.lt_s
    local.tee $5
    i32.eqz
    if
     i32.const 1600
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     local.set $5
    end
    local.get $5
    i32.eqz
    if (result i32)
     i32.const 1632
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
    else
     local.get $5
    end
    if
     local.get $0
     local.get $1
     local.get $4
     local.get $3
     call $~lib/string/String#substring
     call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     local.get $3
     i32.const 1
     i32.add
     local.set $4
     i32.const 1600
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     if
      local.get $0
      i32.const 1664
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      i32.const 1632
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $2
      i32.eq
      if
       local.get $0
       i32.const 1696
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       i32.const 1728
       i32.const 0
       call $~lib/string/String#charCodeAt
       local.get $2
       i32.eq
       if
        local.get $0
        i32.const 1760
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        i32.const 1792
        i32.const 0
        call $~lib/string/String#charCodeAt
        local.get $2
        i32.eq
        if
         local.get $0
         i32.const 1824
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         i32.const 1856
         i32.const 0
         call $~lib/string/String#charCodeAt
         local.get $2
         i32.eq
         if
          local.get $0
          i32.const 1888
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          i32.const 1920
          i32.const 0
          call $~lib/string/String#charCodeAt
          local.get $2
          i32.eq
          if
           local.get $0
           i32.const 1952
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 1984
           local.get $2
           call $~lib/util/number/itoa32
           call $~lib/string/String.__concat
           i32.const 1504
           i32.const 108
           i32.const 20
           call $~lib/builtins/abort
           unreachable
          end
         end
        end
       end
      end
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $1
  local.get $4
  local.get $1
  call $~lib/string/String#get:length
  call $~lib/string/String#substring
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 1600
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 51 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
  if
   local.get $0
   i32.load
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.const 0
   call $~lib/array/Array<i32>#__set
  else
   local.get $0
   i32.const 1472
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  i32.const 0
  call $~lib/string/String.__ne
  if (result i32)
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   if (result i32)
    local.get $1
   else
    i32.const 0
    i32.const 1504
    i32.const 79
    i32.const 29
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2592
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 52 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2624
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $start:~lib/assemblyscript-json/decoder (; 53 ;)
  i32.const 2080
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 2720
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 2752
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 2784
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 54 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 18
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#constructor (; 55 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 19
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $2
  i32.load
  drop
  local.get $1
  i32.store
  local.get $0
 )
 (func $start:~lib/assemblyscript-json/index (; 56 ;)
  (local $0 i32)
  call $start:~lib/assemblyscript-json/decoder
  i32.const 4
  i32.const 16
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  i32.const 0
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#constructor
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
 )
 (func $~lib/util/number/decimalCount64 (; 57 ;) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  if
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 11
    i32.const 12
    local.get $0
    i64.const 100000000000
    i64.lt_u
    select
    local.set $1
    i32.const 10
    local.get $1
    local.get $0
    i64.const 10000000000
    i64.lt_u
    select
    return
   else
    i32.const 14
    i32.const 15
    local.get $0
    i64.const 100000000000000
    i64.lt_u
    select
    local.set $1
    i32.const 13
    local.get $1
    local.get $0
    i64.const 10000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    i32.const 17
    local.get $0
    i64.const 10000000000000000
    i64.lt_u
    select
    return
   else
    i32.const 19
    i32.const 20
    local.get $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    local.set $1
    i32.const 18
    local.get $1
    local.get $0
    i64.const 1000000000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa64_lut (; 58 ;) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  i32.const 2528
  i32.load offset=4
  local.set $3
  loop $while-continue|0
   local.get $1
   i64.const 100000000
   i64.ge_u
   local.set $4
   local.get $4
   if
    local.get $1
    i64.const 100000000
    i64.div_u
    local.set $5
    local.get $1
    local.get $5
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $6
    local.get $5
    local.set $1
    local.get $6
    i32.const 10000
    i32.div_u
    local.set $7
    local.get $6
    i32.const 10000
    i32.rem_u
    local.set $8
    local.get $7
    i32.const 100
    i32.div_u
    local.set $9
    local.get $7
    i32.const 100
    i32.rem_u
    local.set $10
    local.get $8
    i32.const 100
    i32.div_u
    local.set $11
    local.get $8
    i32.const 100
    i32.rem_u
    local.set $12
    local.get $3
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $3
    local.get $12
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $14
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $13
    local.get $14
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $3
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $3
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $14
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $13
    local.get $14
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/itoa64 (; 59 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 2080
   return
  end
  local.get $0
  i64.const 0
  i64.lt_s
  local.tee $1
  if
   i64.const 0
   local.get $0
   i64.sub
   local.set $0
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $4
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $3
   local.get $4
   local.get $2
   call $~lib/util/number/utoa32_lut
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $3
   local.get $0
   local.get $2
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 60 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/near-bindgen-as/index/encode<i32,~lib/near-bindgen-as/index/JSONEncoder> (; 61 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<u32,~lib/near-bindgen-as/index/JSONEncoder> (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $~lib/util/number/utoa64 (; 63 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 2080
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $3
   call $~lib/util/number/decimalCount32
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.get $3
   local.get $1
   call $~lib/util/number/utoa32_lut
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa64_lut
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 64 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
 )
 (func $~lib/near-bindgen-as/index/encode<u64,~lib/near-bindgen-as/index/JSONEncoder> (; 65 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  call $~lib/util/number/utoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 66 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2560
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/near-bindgen-as/index/JSONEncoder> (; 67 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__get (; 68 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 992
   i32.const 1056
   i32.const 152
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/util/string/joinStringArray (; 69 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  i32.const 0
  i32.lt_s
  if
   i32.const 976
   return
  end
  local.get $8
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $3
   if (result i32)
    local.get $3
   else
    i32.const 976
   end
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $4
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    local.get $7
    local.tee $4
    if
     local.get $4
     call $~lib/string/String#get:length
     local.get $5
     i32.add
     local.set $5
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $6
  local.get $5
  local.get $2
  call $~lib/string/String#get:length
  local.tee $7
  local.get $8
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $5
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $1
    local.get $1
    local.tee $4
    if
     local.get $5
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     local.get $4
     call $~lib/string/String#get:length
     local.tee $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $6
     i32.add
     local.set $6
    end
    local.get $7
    if
     local.get $5
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $6
     local.get $7
     i32.add
     local.set $6
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $0
  local.get $8
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $7
  local.get $7
  local.tee $4
  if
   local.get $5
   local.get $6
   i32.const 1
   i32.shl
   i32.add
   local.get $4
   local.get $4
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $5
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 70 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinStringArray
 )
 (func $~lib/near-runtime-ts/base64/base64.encode (; 71 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.rem_s
  i32.sub
  local.set $4
  local.get $0
  i32.load offset=8
  i32.eqz
  if
   i32.const 976
   return
  end
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   if
    local.get $1
    i32.const 224
    local.get $0
    local.get $3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.get $0
    local.get $3
    i32.const 1
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    i32.or
    local.get $0
    local.get $3
    i32.const 2
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    local.tee $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 224
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 224
    local.get $2
    i32.const 6
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 224
    local.get $2
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    i32.const 3
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  block $break|1
   block $case1|1
    local.get $0
    i32.load offset=8
    local.get $4
    i32.sub
    local.tee $2
    i32.const 1
    i32.ne
    if
     local.get $2
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $1
    i32.const 224
    local.get $0
    local.get $3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.tee $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 224
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 192
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 192
    call $~lib/array/Array<~lib/string/String>#push
    drop
    br $break|1
   end
   local.get $1
   i32.const 224
   local.get $0
   local.get $3
   call $~lib/typedarray/Uint8Array#__get
   i32.const 16
   i32.shl
   local.get $0
   local.get $3
   i32.const 1
   i32.add
   call $~lib/typedarray/Uint8Array#__get
   i32.const 8
   i32.shl
   i32.or
   local.tee $2
   i32.const 18
   i32.shr_u
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 224
   local.get $2
   i32.const 12
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 224
   local.get $2
   i32.const 6
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 192
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $1
  i32.const 976
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/typedarray/Uint8Array,~lib/near-bindgen-as/index/JSONEncoder> (; 72 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   call $~lib/near-runtime-ts/base64/base64.encode
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 73 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 3088
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 74 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 75 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#pop (; 76 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3264
   i32.const 1248
   i32.const 288
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 77 ;) (param $0 i32)
  local.get $0
  i32.const 3232
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/string/String>,~lib/near-bindgen-as/index/JSONEncoder> (; 78 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/string/String>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/near-bindgen-as/index/JSONEncoder> (; 79 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/string/String>,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/array/Array<u32>#__get (; 80 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<u32>,~lib/near-bindgen-as/index/JSONEncoder> (; 81 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<u32>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<u32,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<i32>,~lib/near-bindgen-as/index/JSONEncoder> (; 82 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<i32,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#__get (; 83 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 992
   i32.const 1056
   i32.const 24
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (; 84 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 992
   i32.const 1056
   i32.const 35
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/as-bignum/utils/processU64 (; 85 ;) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $4
  i32.const 63
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $4
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $4
    local.set $2
    loop $for-loop|2
     local.get $2
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 25
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      local.get $4
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $2
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $3
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
 )
 (func $~lib/as-bignum/utils/u128toa10 (; 86 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 12
  i32.const 21
  call $~lib/rt/stub/__alloc
  i32.const 40
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/utils/processU64
  local.get $2
  local.get $0
  i64.load
  call $~lib/as-bignum/utils/processU64
  i32.const 976
  local.set $1
  i32.const 0
  local.set $3
  i32.const 39
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const -1
   i32.ne
   if
    local.get $3
    if (result i32)
     i32.const 0
    else
     local.get $2
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    if
     i32.const 1
     local.set $3
    end
    local.get $3
    if
     local.get $1
     i32.const 560
     local.get $2
     local.get $0
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $1
    end
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/as-bignum/integer/u128/u128#toString (; 87 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  i32.const 1
  local.get $1
  i32.const 10
  local.get $1
  select
  local.tee $1
  i32.const 16
  i32.eq
  local.get $1
  i32.const 10
  i32.eq
  select
  i32.eqz
  if
   i32.const 3408
   i32.const 3504
   i32.const 894
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.tee $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 2080
   return
  end
  i32.const 976
  local.set $6
  i32.const 0
  local.get $0
  local.tee $2
  i64.load
  local.get $2
  i64.load offset=8
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $5
  local.get $1
  i32.const 16
  i32.eq
  if
   local.get $5
   local.tee $2
   i64.load
   local.set $7
   i32.const 124
   local.get $2
   i64.load offset=8
   local.tee $4
   i64.const 1
   i64.sub
   local.get $4
   i64.xor
   i64.const 63
   i64.shr_s
   local.tee $3
   i64.const -1
   i64.xor
   local.get $4
   i64.and
   local.get $3
   local.get $7
   i64.and
   i64.or
   i64.clz
   i32.wrap_i64
   local.get $3
   i32.wrap_i64
   i32.const 64
   i32.and
   i32.add
   i32.const -4
   i32.and
   i32.sub
   local.set $2
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $6
     i32.const 560
     local.get $2
     i32.const 127
     i32.and
     i64.extend_i32_s
     local.tee $3
     local.get $3
     i64.const 127
     i64.add
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $7
     local.get $3
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.tee $4
     i64.const -1
     i64.xor
     local.get $5
     local.tee $0
     i64.load offset=8
     local.tee $8
     local.get $3
     i64.const 63
     i64.and
     local.tee $3
     i64.shr_u
     local.tee $9
     i64.and
     local.set $10
     i32.const 0
     local.get $10
     local.get $8
     i64.const 64
     local.get $3
     i64.sub
     i64.shl
     local.get $7
     i64.and
     local.get $0
     i64.load
     local.get $3
     i64.shr_u
     i64.or
     local.get $4
     i64.and
     i64.or
     local.get $4
     local.get $9
     i64.and
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $0
     local.get $0
     local.tee $5
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $6
     local.get $2
     i32.const 4
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $6
   return
  else
   local.get $1
   i32.const 10
   i32.eq
   if
    local.get $0
    call $~lib/as-bignum/utils/u128toa10
    return
   end
  end
  i32.const 3584
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/as-bignum/integer/u128/u128,~lib/near-bindgen-as/index/JSONEncoder> (; 88 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/as-bignum/integer/u128/u128#toString
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 89 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/near-bindgen-as/index/JSONEncoder> (; 90 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<~lib/typedarray/Uint8Array,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/array/Array<u64>#__get (; 91 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/near-bindgen-as/index/JSONEncoder> (; 92 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<u64>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<u64,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 93 ;) (param $0 i32)
  local.get $0
  i32.const 3712
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $assembly/model/FooBar#_encode (; 94 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 54
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 880
  local.get $2
  call $~lib/near-bindgen-as/index/encode<i32,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 2816
  local.get $2
  call $~lib/near-bindgen-as/index/encode<u32,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i64.load offset=8
  i32.const 2848
  local.get $2
  call $~lib/near-bindgen-as/index/encode<u64,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i64.load offset=16
  i32.const 2880
  local.get $2
  call $~lib/near-bindgen-as/index/encode<u64,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $2
  i32.const 2912
  local.get $0
  i64.load offset=24
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $0
  i32.load8_u offset=32
  local.set $1
  local.get $2
  i32.const 2944
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $2
  i32.const 2656
  i32.const 2688
  local.get $1
  select
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load offset=36
  i32.const 2976
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=40
  i32.const 3008
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/typedarray/Uint8Array,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=44
  i32.const 3056
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=48
  i32.const 3312
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<u32>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=52
  i32.const 3344
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<i32>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=56
  i32.const 3376
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/as-bignum/integer/u128/u128,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=60
  i32.const 3632
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=64
  i32.const 3680
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 95 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 976
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $assembly/model/FooBar#toJSON (; 96 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 976
  i32.const 0
  call $assembly/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 97 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 98 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  local.get $0
  local.tee $3
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $0
  i32.gt_u
  if
   i32.const 992
   i32.const 1056
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    local.get $1
    i32.sub
   else
    i32.const 656
    i32.const 1056
    i32.const 1750
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $2
  else
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.gt_s
   if
    i32.const 656
    i32.const 1056
    i32.const 1755
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $3
  i32.store
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $3
  i32.add
  i32.store offset=4
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array.wrap|trampoline (; 99 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap
 )
 (func $~setArgumentsLength (; 100 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 101 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap|trampoline
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 102 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $assembly/model/FooBar#encode (; 103 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 976
  i32.const 0
  call $assembly/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 104 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 20
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 976
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (; 105 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#isWhitespace (; 106 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (; 107 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 3744
   i32.const 3808
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $0
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (; 108 ;) (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#isWhitespace
   local.set $1
   local.get $1
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Value#constructor (; 109 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__alloc
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 110 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 656
   i32.const 704
   i32.const 54
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#clear (; 111 ;) (param $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 112 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 23
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#clear
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#constructor (; 113 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 22
   call $~lib/rt/stub/__alloc
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $0
  i32.load offset=4
  drop
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push (; 114 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get (; 115 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (; 116 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
 )
 (func $~lib/rt/__instanceof (; 117 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.set $2
  global.get $~lib/rt/__rtti_base
  local.set $3
  local.get $2
  local.get $3
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    i32.const 4
    i32.add
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    local.set $4
    local.get $4
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/util/hash/hashStr (; 118 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $2
  local.get $0
  if
   i32.const 0
   local.set $1
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_u
    if
     local.get $2
     local.get $0
     local.get $1
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find (; 119 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $0
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has (; 120 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash (; 121 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  i32.const 0
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $7
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $8
  local.get $6
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $4
    local.tee $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $3
     i32.load
     i32.store
     local.get $2
     local.get $3
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $5
     local.get $3
     i32.load
     call $~lib/util/hash/hashStr
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     i32.store offset=8
     local.get $3
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 12
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $5
  local.tee $2
  local.get $0
  i32.load
  i32.ne
  drop
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $6
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.ne
  drop
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set (; 122 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $5
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.tee $3
  if
   local.get $3
   i32.load offset=4
   local.get $2
   i32.ne
   if
    local.get $3
    local.get $2
    i32.store offset=4
   end
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $5
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $4
   i32.load
   i32.store offset=8
   local.get $4
   local.get $3
   i32.store
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#_set (; 123 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $0
  i32.load
  local.get $1
  local.get $2
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set
  drop
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (; 124 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/string/String#get:length
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load
   i32.load offset=12
   i32.eqz
  end
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.tee $3
  if (result i32)
   local.get $3
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $3
   i32.const 22
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $3
   else
    i32.const 0
    i32.const 3904
    i32.const 74
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/JSON/JSON.Obj#_set
  else
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $3
   if (result i32)
    local.get $3
    i32.const 24
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $0
    i32.const 24
    call $~lib/rt/__instanceof
    if (result i32)
     local.get $0
    else
     i32.const 0
     i32.const 3904
     i32.const 77
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
    drop
   end
  end
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 125 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 768
   i32.const 719
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $6
  local.set $3
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $5
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $3
       local.get $1
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $5
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $7
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $1
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $5
        i32.const 6
        i32.shl
        i32.or
        local.get $7
        i32.or
        local.set $1
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $1
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $5
        i32.const 12
        i32.shl
        i32.or
        local.get $7
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $1
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $1
       i32.const 65536
       i32.lt_u
       if
        local.get $3
        local.get $1
        i32.store16
       else
        local.get $3
        local.get $1
        i32.const 65536
        i32.sub
        local.tee $1
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        local.get $1
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        i32.or
        i32.store
        local.get $3
        i32.const 2
        i32.add
        local.set $3
       end
      end
     else
      local.get $2
      local.get $1
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $3
      local.get $1
      i32.store16
     end
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
  end
  local.get $6
  local.get $3
  local.get $6
  i32.sub
  call $~lib/rt/stub/__realloc
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 126 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.add
  i32.add
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (; 127 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   i32.const 1
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.tee $0
   i32.const 15
   i32.gt_s
   local.get $0
   i32.const 10
   i32.lt_s
   select
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $0
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  i32.load offset=4
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.lt_s
  i32.const 0
  local.get $0
  i32.const 0
  i32.ge_s
  select
  i32.eqz
  if
   i32.const 4384
   i32.const 3808
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCodePoint (; 128 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1114111
  i32.gt_u
  if
   i32.const 0
   i32.const 768
   i32.const 23
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  local.get $0
  i32.const 65535
  i32.gt_s
  local.tee $2
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $2
  if
   local.get $1
   local.get $0
   i32.const 65536
   i32.sub
   local.tee $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.or
   i32.const 16
   i32.shl
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.or
   i32.or
   i32.store
  else
   local.get $1
   local.get $0
   i32.store16
  end
  local.get $1
 )
 (func $~lib/string/String.fromCharCode (; 129 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (; 130 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.set $1
  i32.const 1600
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1600
   return
  end
  i32.const 1632
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1632
   return
  end
  i32.const 4192
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 4192
   return
  end
  i32.const 4224
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1728
   return
  end
  i32.const 4256
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1792
   return
  end
  i32.const 4288
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1856
   return
  end
  i32.const 4320
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1920
   return
  end
  i32.const 4352
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $1
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   local.get $1
   i32.const 12
   i32.shl
   local.get $2
   i32.const 8
   i32.shl
   i32.add
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.add
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 4448
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.set $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/string/String.fromCharCode
  call $~lib/string/String.__concat
  i32.const 3808
  i32.const 255
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (; 131 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 1600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 4032
   i32.const 3808
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.tee $3
   i32.const 32
   i32.lt_s
   if
    i32.const 4112
    i32.const 3808
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1600
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $3
   i32.eq
   if (result i32)
    i32.const 1
    global.set $~argumentsLength
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $0
    local.get $2
    i32.load offset=12
    i32.eqz
    if
     local.get $0
     return
    end
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 976
    call $~lib/array/Array<~lib/string/String>#join
    return
   else
    i32.const 1632
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $3
    i32.eq
    if (result i32)
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~argumentsLength
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      call $~lib/array/Array<~lib/string/String>#push
      drop
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
    else
     local.get $1
    end
   end
   local.set $1
   br $for-loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseKey (; 132 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
  local.set $2
  local.get $1
  i32.load
  drop
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 2592
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 4528
   i32.const 3808
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop (; 133 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3264
   i32.const 1248
   i32.const 288
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (; 134 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2624
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $1
  i32.load
  drop
  i32.const 976
  i32.store
  local.get $0
  i32.load
  local.tee $1
  local.get $2
  i32.const 0
  call $~lib/assemblyscript-json/JSON/JSON.Obj#constructor
  local.tee $2
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  local.get $1
  i32.load
  local.get $2
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
  drop
  i32.const 1
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $while-continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 3712
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    if
     local.get $1
     if
      i32.const 0
      local.set $1
     else
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 1472
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3984
       i32.const 3808
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   i32.const 3712
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 4576
    i32.const 3808
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.tee $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
   drop
  end
  i32.const 1
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#constructor (; 135 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 24
   call $~lib/rt/stub/__alloc
  end
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#pushArray (; 136 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  call $~lib/assemblyscript-json/JSON/JSON.Arr#constructor
  local.set $2
  local.get $0
  i32.load
  i32.load offset=12
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
  else
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push
   drop
  end
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (; 137 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 3088
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $1
  i32.load
  drop
  i32.const 976
  i32.store
  local.get $0
  i32.load
  local.get $2
  call $~lib/assemblyscript-json/JSON/Handler#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $while-continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 3232
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.ne
    if
     local.get $1
     if
      i32.const 0
      local.set $1
     else
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      i32.const 1472
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3984
       i32.const 3808
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   i32.const 3232
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 4640
    i32.const 3808
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.tee $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
   drop
  end
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (; 138 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 1600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
  local.set $1
  i32.const 4
  i32.const 25
  call $~lib/rt/stub/__alloc
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (; 139 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $1
   call $~lib/string/String#get:length
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.ne
    if
     i32.const 4704
     local.get $1
     call $~lib/string/String.__concat
     i32.const 4752
     call $~lib/string/String.__concat
     i32.const 3808
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (; 140 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.const 26
  call $~lib/rt/stub/__alloc
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  local.get $2
  i32.store8
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#addValue
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (; 141 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2688
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/JSON/Handler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2656
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/JSON/Handler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (; 142 ;) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $3
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 4784
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
  end
  i32.const 0
  local.set $2
  loop $while-continue|0
   global.get $~lib/assemblyscript-json/decoder/CHAR_0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   i32.le_s
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    global.get $~lib/assemblyscript-json/decoder/CHAR_9
    i32.le_s
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    local.get $1
    i64.const 10
    i64.mul
    i64.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.get $3
   i64.mul
   local.set $1
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 8
   i32.const 27
   call $~lib/rt/stub/__alloc
   call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
   local.tee $0
   local.get $1
   i64.store
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (; 143 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2560
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   i32.const 2560
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   i32.const 28
   call $~lib/rt/stub/__alloc
   call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (; 144 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize (; 145 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  if
   local.get $0
   i32.load offset=4
   drop
   local.get $0
   local.get $2
   i32.store offset=4
  else
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $2
   local.get $0
   i32.load offset=4
   drop
   local.get $0
   local.get $2
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.eqz
  if
   i32.const 4816
   i32.const 3808
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (; 146 ;) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  call $~lib/assemblyscript-json/JSON/Handler#get:peek
  local.set $0
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  local.set $1
  loop $while-continue|0
   local.get $1
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $1
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop
    drop
    br $while-continue|0
   end
  end
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get (; 147 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 4960
   i32.const 5024
   i32.const 111
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#get (; 148 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar> (; 149 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#has (; 150 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<i32> (; 151 ;) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<i32,~lib/assemblyscript-json/JSON/JSON.Obj> (; 152 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5440
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<u32> (; 153 ;) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<u32,~lib/assemblyscript-json/JSON/JSON.Obj> (; 154 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<u32>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5536
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5536
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5536
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<u64> (; 155 ;) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/util/string/isSpace (; 156 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 5760
  i32.lt_s
  if
   local.get $0
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   local.get $0
   i32.const 9
   i32.sub
   i32.const 13
   i32.const 9
   i32.sub
   i32.le_u
   i32.or
   return
  end
  local.get $0
  i32.const 8192
  i32.sub
  i32.const 10
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $0
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<i64> (; 157 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  call $~lib/string/String#get:length
  local.tee $3
  i32.eqz
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load16_u
  local.set $2
  i64.const 1
  local.set $5
  loop $while-continue|0
   local.get $2
   call $~lib/util/string/isSpace
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $2
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 45
  i32.eq
  if (result i32)
   local.get $3
   i32.const 1
   i32.sub
   local.tee $3
   i32.eqz
   if
    i64.const 0
    return
   end
   i64.const -1
   local.set $5
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
  else
   local.get $2
   i32.const 43
   i32.eq
   if (result i32)
    local.get $3
    i32.const 1
    i32.sub
    local.tee $3
    i32.eqz
    if
     i64.const 0
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
   else
    local.get $2
   end
  end
  local.set $2
  local.get $1
  if
   i32.const 1
   local.get $1
   i32.const 36
   i32.gt_s
   local.get $1
   i32.const 2
   i32.lt_s
   select
   if
    i64.const 0
    return
   end
  else
   local.get $3
   i32.const 2
   i32.gt_s
   i32.const 0
   local.get $2
   i32.const 48
   i32.eq
   select
   if (result i32)
    block $break|1 (result i32)
     block $case3|1
      block $case2|1
       block $case1|1
        local.get $0
        i32.const 2
        i32.add
        i32.load16_u
        i32.const 32
        i32.or
        local.tee $2
        i32.const 98
        i32.ne
        if
         local.get $2
         i32.const 111
         i32.eq
         br_if $case1|1
         local.get $2
         i32.const 120
         i32.eq
         br_if $case2|1
         br $case3|1
        end
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $3
        i32.const 2
        i32.sub
        local.set $3
        i32.const 2
        br $break|1
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       local.get $3
       i32.const 2
       i32.sub
       local.set $3
       i32.const 8
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $3
      i32.const 2
      i32.sub
      local.set $3
      i32.const 16
      br $break|1
     end
     i32.const 10
    end
   else
    i32.const 10
   end
   local.set $1
  end
  i64.const 0
  local.set $4
  loop $while-continue|2
   local.get $3
   local.tee $2
   i32.const 1
   i32.sub
   local.set $3
   local.get $2
   if
    block $while-break|2
     local.get $0
     i32.load16_u
     local.tee $2
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 48
      i32.sub
     else
      local.get $2
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      if (result i32)
       local.get $2
       i32.const 55
       i32.sub
      else
       local.get $2
       i32.const 97
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $2
        i32.const 87
        i32.sub
       else
        br $while-break|2
       end
      end
     end
     local.tee $2
     local.get $1
     i32.ge_u
     br_if $while-break|2
     local.get $2
     i64.extend_i32_u
     local.get $4
     local.get $1
     i64.extend_i32_s
     i64.mul
     i64.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $4
  local.get $5
  i64.mul
 )
 (func $~lib/number/U64.parseInt (; 158 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
 )
 (func $~lib/near-bindgen-as/index/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj> (; 159 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<u64>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5568
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5568
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5568
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/U64.parseInt
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<i64> (; 160 ;) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/number/I64.parseInt (; 161 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
 )
 (func $~lib/near-bindgen-as/index/decode<i64,~lib/assemblyscript-json/JSON/JSON.Obj> (; 162 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<i64>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5744
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5744
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $~lib/near-bindgen-as/index/decode<bool,~lib/assemblyscript-json/JSON/JSON.Obj> (; 163 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 5072
    i32.const 5776
    call $~lib/string/String.__concat
    i32.const 5136
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 167
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5776
   call $~lib/string/String.__concat
   i32.const 5808
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 175
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 26
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 177
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  i32.load8_u
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String> (; 164 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj> (; 165 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5856
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5856
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/typedarray/Uint8Array> (; 166 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj> (; 167 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/typedarray/Uint8Array>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5952
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5952
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/near-runtime-ts/base64/base64.decode
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>> (; 168 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 169 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 9
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/string/String>> (; 170 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value> (; 171 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5856
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5856
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $~lib/near-bindgen-as/index/decodeArray<~lib/string/String> (; 172 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Value> (; 173 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/string/String>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6192
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6192
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<~lib/string/String>
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 174 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decodeArray<~lib/array/Array<~lib/string/String>> (; 175 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 176 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6000
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6000
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<~lib/array/Array<~lib/string/String>>
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u32>> (; 177 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u32>#constructor (; 178 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 10
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<u32,~lib/assemblyscript-json/JSON/JSON.Value> (; 179 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<u32>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5536
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5536
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5536
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/array/Array<u32>#push (; 180 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/near-bindgen-as/index/decodeArray<u32> (; 181 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<u32,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<u32>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<u32>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 182 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u32>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6272
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u32>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6272
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<u32>
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<i32>> (; 183 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<i32,~lib/assemblyscript-json/JSON/JSON.Value> (; 184 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5440
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-bindgen-as/index/decodeArray<i32> (; 185 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<i32,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<i32>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<i32>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 186 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<i32>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6320
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<i32>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6320
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<i32>
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/as-bignum/integer/u128/u128> (; 187 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u8>#__get (; 188 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/as-bignum/globals/__multi3 (; 189 ;) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  local.get $1
  local.set $5
  local.get $3
  local.set $6
  local.get $5
  i64.const 4294967295
  i64.and
  local.set $9
  local.get $6
  i64.const 4294967295
  i64.and
  local.set $10
  local.get $9
  local.get $10
  i64.mul
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $12
  local.get $5
  i64.const 32
  i64.shr_u
  local.set $5
  local.get $5
  local.get $10
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $8
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $7
  local.get $6
  i64.const 32
  i64.shr_u
  local.set $6
  local.get $9
  local.get $6
  i64.mul
  local.get $8
  i64.add
  local.set $11
  local.get $12
  local.get $11
  i64.const 32
  i64.shl
  i64.add
  local.set $13
  local.get $5
  local.get $6
  i64.mul
  local.get $7
  i64.add
  local.set $14
  local.get $14
  local.get $2
  local.get $3
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $1
  local.get $4
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $14
  local.get $13
  global.set $~lib/as-bignum/globals/__res128_lo
  local.get $14
  global.set $~lib/as-bignum/globals/__res128_hi
 )
 (func $~lib/as-bignum/utils/atou128 (; 190 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 1
  local.get $1
  i32.const 10
  local.get $1
  select
  local.tee $1
  i32.const 36
  i32.gt_s
  local.get $1
  i32.const 2
  i32.lt_s
  select
  if
   i32.const 6400
   i32.const 6448
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $8
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   return
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.tee $2
  i32.const 48
  i32.eq
  i32.const 0
  local.get $8
  i32.const 1
  i32.eq
  select
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   return
  end
  local.get $0
  local.get $2
  i32.const 45
  i32.eq
  local.tee $9
  local.get $2
  i32.const 43
  i32.eq
  local.get $9
  select
  local.tee $4
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   i32.const 1
   local.get $0
   local.get $4
   i32.const 1
   i32.add
   local.tee $4
   call $~lib/string/String#charCodeAt
   local.tee $2
   i32.const 88
   i32.eq
   local.get $2
   i32.const 120
   i32.eq
   select
   if (result i32)
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    i32.const 16
   else
    i32.const 1
    local.get $2
    i32.const 79
    i32.eq
    local.get $2
    i32.const 111
    i32.eq
    select
    if (result i32)
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     i32.const 8
    else
     i32.const 1
     local.get $2
     i32.const 66
     i32.eq
     local.get $2
     i32.const 98
     i32.eq
     select
     if (result i32)
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      i32.const 2
     else
      local.get $1
     end
    end
   end
   local.set $1
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $2
  i32.const 6608
  local.set $10
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      local.get $1
      local.tee $3
      i32.const 2
      i32.ne
      if
       local.get $3
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $3
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      loop $do-continue|1
       local.get $0
       local.get $4
       call $~lib/string/String#charCodeAt
       i32.const 48
       i32.sub
       local.tee $3
       i32.const 2
       i32.lt_u
       if
        i32.const 0
        local.get $2
        i64.load
        local.tee $5
        i64.const 1
        i64.shl
        local.get $2
        i64.load offset=8
        i64.const 1
        i64.shl
        local.get $5
        i64.const 63
        i64.shr_u
        i64.or
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $1
        local.get $1
        local.tee $2
        local.set $6
        i32.const 0
        local.get $3
        i64.extend_i32_u
        i64.const 0
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $1
        i32.const 0
        local.get $6
        i64.load
        local.get $1
        i64.load
        i64.or
        local.get $6
        i64.load offset=8
        local.get $1
        i64.load offset=8
        i64.or
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $3
        local.get $3
        local.set $2
        local.get $4
        i32.const 1
        i32.add
        local.tee $4
        local.get $8
        i32.lt_s
        br_if $do-continue|1
       end
      end
      br $break|0
     end
     loop $do-continue|2
      local.get $0
      local.get $4
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.tee $3
      i32.const 10
      i32.lt_u
      if
       i32.const 0
       local.get $2
       i64.load
       local.tee $5
       i64.const 3
       i64.shl
       local.get $2
       i64.load offset=8
       i64.const 3
       i64.shl
       local.get $5
       i64.const 61
       i64.shr_u
       i64.or
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $6
       i32.const 0
       local.get $2
       i64.load
       local.tee $7
       i64.const 1
       i64.shl
       local.get $2
       i64.load offset=8
       i64.const 1
       i64.shl
       local.get $7
       i64.const 63
       i64.shr_u
       i64.or
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.tee $1
       i64.load
       local.tee $7
       local.get $6
       i64.load
       i64.add
       local.tee $5
       local.get $7
       i64.lt_u
       i64.extend_i32_u
       local.get $6
       i64.load offset=8
       local.get $1
       i64.load offset=8
       i64.add
       i64.add
       local.set $7
       i32.const 0
       local.get $5
       local.get $7
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $1
       local.get $1
       local.tee $2
       local.set $6
       i32.const 0
       local.get $3
       i64.extend_i32_u
       i64.const 0
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.tee $1
       i64.load
       local.tee $5
       local.get $6
       i64.load
       i64.add
       local.tee $7
       local.get $5
       i64.lt_u
       i64.extend_i32_u
       local.get $6
       i64.load offset=8
       local.get $1
       i64.load offset=8
       i64.add
       i64.add
       local.set $5
       i32.const 0
       local.get $7
       local.get $5
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $1
       local.get $1
       local.set $2
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $8
       i32.lt_s
       br_if $do-continue|2
      end
     end
     br $break|0
    end
    loop $do-continue|3
     block $do-break|3
      local.get $0
      local.get $4
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.tee $1
      i32.const 74
      i32.gt_u
      br_if $do-break|3
      local.get $10
      local.get $1
      call $~lib/array/Array<u8>#__get
      local.tee $1
      i32.const 16
      i32.ge_u
      br_if $do-break|3
      i32.const 0
      local.get $2
      i64.load
      local.tee $7
      i64.const 4
      i64.shl
      local.get $2
      i64.load offset=8
      i64.const 4
      i64.shl
      local.get $7
      i64.const 60
      i64.shr_u
      i64.or
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $3
      local.get $3
      local.tee $2
      local.set $6
      i32.const 0
      local.get $1
      i64.extend_i32_u
      i64.const 0
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $3
      i32.const 0
      local.get $6
      i64.load
      local.get $3
      i64.load
      i64.or
      local.get $6
      i64.load offset=8
      local.get $3
      i64.load offset=8
      i64.or
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $6
      local.get $6
      local.set $2
      local.get $4
      i32.const 1
      i32.add
      local.tee $4
      local.get $8
      i32.lt_s
      br_if $do-continue|3
     end
    end
    br $break|0
   end
   i32.const 0
   local.get $1
   i64.extend_i32_s
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $6
   loop $do-continue|4
    block $do-break|4
     local.get $0
     local.get $4
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.tee $3
     i32.const 74
     i32.gt_u
     br_if $do-break|4
     local.get $10
     local.get $3
     call $~lib/array/Array<u8>#__get
     local.tee $12
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     br_if $do-break|4
     i32.const 0
     local.get $2
     i64.load
     local.get $2
     i64.load offset=8
     local.get $6
     local.tee $3
     i64.load
     local.get $3
     i64.load offset=8
     call $~lib/as-bignum/globals/__multi3
     i32.const 0
     global.get $~lib/as-bignum/globals/__res128_lo
     global.get $~lib/as-bignum/globals/__res128_hi
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $3
     local.get $3
     local.tee $2
     local.set $11
     i32.const 0
     local.get $12
     i64.extend_i32_u
     i64.const 0
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.tee $3
     i64.load
     local.tee $5
     local.get $11
     i64.load
     i64.add
     local.tee $7
     local.get $5
     i64.lt_u
     i64.extend_i32_u
     local.get $11
     i64.load offset=8
     local.get $3
     i64.load offset=8
     i64.add
     i64.add
     local.set $5
     i32.const 0
     local.get $7
     local.get $5
     call $~lib/as-bignum/integer/u128/u128#constructor
     local.set $3
     local.get $3
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.tee $4
     local.get $8
     i32.lt_s
     br_if $do-continue|4
    end
   end
  end
  local.get $9
  if (result i32)
   i32.const 0
   local.get $2
   i64.load
   i64.const -1
   i64.xor
   local.tee $5
   i64.const 1
   i64.add
   local.get $2
   i64.load offset=8
   i64.const -1
   i64.xor
   local.get $5
   i64.const 1
   i64.and
   local.get $5
   i64.const 1
   i64.shr_u
   i64.add
   i64.const 63
   i64.shr_u
   i64.add
   call $~lib/as-bignum/integer/u128/u128#constructor
  else
   local.get $2
  end
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj> (; 191 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6368
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $3
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6368
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $3
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4880
   i32.const 215
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/as-bignum/utils/atou128
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>> (; 192 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Value> (; 193 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/typedarray/Uint8Array>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5952
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5952
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $~lib/near-runtime-ts/base64/base64.decode
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 194 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decodeArray<~lib/typedarray/Uint8Array> (; 195 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 196 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6640
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6640
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<~lib/typedarray/Uint8Array>
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u64>> (; 197 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u64>#constructor (; 198 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 13
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<u64,~lib/assemblyscript-json/JSON/JSON.Value> (; 199 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<u64>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5568
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5568
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5568
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/U64.parseInt
 )
 (func $~lib/array/Array<u64>#push (; 200 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  local.get $1
  i64.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/near-bindgen-as/index/decodeArray<u64> (; 201 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u64>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<u64,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<u64>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<u64>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 202 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u64>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6736
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6736
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<u64>
 )
 (func $assembly/model/FooBar#_decode (; 203 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.const 880
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 880
   call $~lib/near-bindgen-as/index/decode<i32,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 0
  end
  i32.store
  local.get $0
  local.get $1
  i32.const 2816
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2816
   call $~lib/near-bindgen-as/index/decode<u32,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 1
  end
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 2848
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2848
   call $~lib/near-bindgen-as/index/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i64.const 4294967297
  end
  i64.store offset=8
  local.get $0
  local.get $1
  i32.const 2880
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2880
   call $~lib/near-bindgen-as/index/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i64.load offset=16
  end
  i64.store offset=16
  local.get $0
  local.get $1
  i32.const 2912
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2912
   call $~lib/near-bindgen-as/index/decode<i64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i64.const -64
  end
  i64.store offset=24
  local.get $0
  local.get $1
  i32.const 2944
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2944
   call $~lib/near-bindgen-as/index/decode<bool,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load8_u offset=32
  end
  i32.store8 offset=32
  local.get $0
  local.tee $2
  local.get $1
  i32.const 2976
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2976
   call $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 816
  end
  local.set $3
  local.get $2
  i32.load offset=36
  drop
  local.get $3
  i32.store offset=36
  local.get $0
  local.tee $3
  local.get $1
  i32.const 3008
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3008
   call $~lib/near-bindgen-as/index/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=40
  end
  local.set $2
  local.get $3
  i32.load offset=40
  drop
  local.get $2
  i32.store offset=40
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3056
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3056
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=44
  end
  local.set $3
  local.get $2
  i32.load offset=44
  drop
  local.get $3
  i32.store offset=44
  local.get $0
  local.tee $3
  local.get $1
  i32.const 3312
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3312
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<u32>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=48
  end
  local.set $2
  local.get $3
  i32.load offset=48
  drop
  local.get $2
  i32.store offset=48
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3344
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3344
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<i32>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=52
  end
  local.set $3
  local.get $2
  i32.load offset=52
  drop
  local.get $3
  i32.store offset=52
  local.get $0
  local.tee $3
  local.get $1
  i32.const 3376
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3376
   call $~lib/near-bindgen-as/index/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=56
  end
  local.set $2
  local.get $3
  i32.load offset=56
  drop
  local.get $2
  i32.store offset=56
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3632
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3632
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=60
  end
  local.set $3
  local.get $2
  i32.load offset=60
  drop
  local.get $3
  i32.store offset=60
  local.get $0
  local.tee $3
  local.get $1
  i32.const 3680
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3680
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<u64>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=64
  end
  local.set $2
  local.get $3
  i32.load offset=64
  drop
  local.get $2
  i32.store offset=64
  local.get $0
 )
 (func $assembly/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj> (; 204 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.set $0
  local.get $0
  call $assembly/model/FooBar#_decode
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 205 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5104
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5104
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5104
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $assembly/model/Nullables#constructor (; 206 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 30
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
 )
 (func $assembly/model/Nullables#_encode (; 207 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 113
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 6864
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 6368
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/as-bignum/integer/u128/u128,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $0
  i32.load offset=8
  i32.const 6896
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/typedarray/Uint8Array,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $assembly/model/Nullables#encode (; 208 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 976
  i32.const 0
  call $assembly/model/Nullables#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/Nullables> (; 209 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $assembly/model/Nullables#_decode (; 210 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6864
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6864
   call $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load
  end
  local.set $3
  local.get $2
  i32.load
  drop
  local.get $3
  i32.store
  local.get $0
  local.tee $3
  local.get $1
  i32.const 6368
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6368
   call $~lib/near-bindgen-as/index/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=4
  end
  local.set $2
  local.get $3
  i32.load offset=4
  drop
  local.get $2
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6896
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6896
   call $~lib/near-bindgen-as/index/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load offset=8
  end
  local.set $3
  local.get $2
  i32.load offset=8
  drop
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array> (; 211 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/Nullables>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6944
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/Nullables>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6944
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 6944
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 30
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/Nullables#_decode
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 212 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<u64>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<u64,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline (; 213 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 214 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u64>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6736
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6736
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<u64>
 )
 (func $~lib/near-bindgen-as/index/encode<i32,~lib/typedarray/Uint8Array>|trampoline (; 215 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/decode<i32,~lib/typedarray/Uint8Array> (; 216 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5440
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5440
   call $~lib/string/String.__concat
   i32.const 5472
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-bindgen-as/index/encode<i64,~lib/typedarray/Uint8Array>|trampoline (; 217 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  local.get $0
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/decode<i64,~lib/typedarray/Uint8Array> (; 218 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<i64>
    drop
    i32.const 0
    if
     i32.const 5072
     i32.const 5744
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5744
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4880
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline (; 219 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/typedarray/Uint8Array> (; 220 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5856
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5856
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline (; 221 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/as-bignum/integer/u128/u128#toString
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 222 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6368
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
   local.set $2
   local.get $2
  else
   local.get $0
  end
  local.tee $3
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6368
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $3
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4880
   i32.const 215
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 25
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5888
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 25
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/as-bignum/utils/atou128
 )
 (func $assembly/test/runTest (; 223 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 608
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $0
  local.tee $2
  i32.const 2
  i32.const 2
  i32.const 10
  i32.const 848
  call $~lib/rt/__allocArray
  local.set $1
  local.get $2
  i32.load offset=48
  drop
  local.get $1
  i32.store offset=48
  local.get $0
  i32.const 321
  i32.store
  local.get $0
  i32.const 123
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store8 offset=32
  local.get $0
  i32.load offset=36
  drop
  local.get $0
  i32.const 880
  i32.store offset=36
  i32.const 912
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $1
  local.get $0
  i32.load offset=40
  drop
  local.get $0
  local.get $1
  i32.store offset=40
  i32.const 0
  i64.const 128
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $2
  local.get $0
  i32.load offset=56
  drop
  local.get $0
  local.get $2
  i32.store offset=56
  i32.const 2
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.const 2
  i32.const 8
  i32.const 1152
  call $~lib/rt/__allocArray
  i32.store
  local.get $2
  i32.const 1
  i32.const 2
  i32.const 8
  i32.const 1216
  call $~lib/rt/__allocArray
  i32.store offset=4
  local.get $0
  i32.load offset=44
  drop
  local.get $0
  local.get $1
  i32.store offset=44
  i32.const 0
  i32.const 2
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.set $1
  local.get $0
  i32.load offset=60
  drop
  local.get $0
  local.get $1
  i32.store offset=60
  local.get $0
  i32.load offset=60
  i32.const 0
  i32.const 912
  call $~lib/near-runtime-ts/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=60
  i32.const 1
  i32.const 912
  call $~lib/near-runtime-ts/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  i32.const 2
  i32.const 3
  i32.const 13
  i32.const 1344
  call $~lib/rt/__allocArray
  local.set $1
  local.get $0
  i32.load offset=64
  drop
  local.get $0
  local.get $1
  i32.store offset=64
  i32.const 1376
  local.get $0
  call $assembly/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  i32.const 6784
  local.get $0
  call $assembly/model/FooBar#encode
  local.tee $2
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.tee $1
  call $assembly/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  local.get $2
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.set $2
  local.get $1
  call $assembly/model/FooBar#toJSON
  local.get $2
  call $assembly/model/FooBar#toJSON
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6816
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=40
  call $~lib/near-runtime-ts/base64/base64.encode
  local.get $1
  i32.load offset=40
  call $~lib/near-runtime-ts/base64/base64.encode
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6816
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  call $~lib/near-runtime-ts/base64/base64.encode
  local.get $1
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  call $~lib/near-runtime-ts/base64/base64.encode
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6816
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#__get
  i32.const 1120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6816
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=64
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.get $1
  i32.load offset=64
  i32.const 0
  call $~lib/array/Array<u64>#__get
  i64.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/Nullables#constructor
  local.tee $0
  call $assembly/model/Nullables#encode
  i32.load
  local.tee $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  local.get $0
  call $assembly/model/Nullables#encode
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array>
  local.tee $0
  i32.load
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6816
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2688
  i32.const 2656
  local.get $0
  i32.load offset=4
  select
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  local.get $0
  i32.load offset=8
  if
   i32.const 6992
   i32.const 6816
   i32.const 55
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $0
  local.tee $1
  i32.const 0
  i32.const 2
  i32.const 9
  i32.const 7088
  call $~lib/rt/__allocArray
  local.set $2
  local.get $1
  i32.load offset=44
  drop
  local.get $2
  i32.store offset=44
  local.get $0
  call $assembly/model/FooBar#encode
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  i32.load offset=44
  i32.load offset=12
  local.get $0
  i32.load offset=44
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 13
  i32.const 7104
  call $~lib/rt/__allocArray
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<u64>#__get
  i64.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  i32.const 13
  i32.const 7136
  call $~lib/rt/__allocArray
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
  i32.load offset=12
  if
   i32.const 0
   i32.const 6816
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 42
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<i32,~lib/typedarray/Uint8Array>
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 65
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i64.const 42
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<i64,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<i64,~lib/typedarray/Uint8Array>
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 7152
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/typedarray/Uint8Array>
  i32.const 7152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 7200
   i32.const 6816
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i64.const 42
  i64.const 42
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  i32.const 976
  call $~lib/near-bindgen-as/index/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
  i64.load
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 6816
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7264
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
 )
 (func $~lib/near-bindgen-as/index/getInput (; 224 ;) (result i32)
  (local $0 i32)
  (local $1 i64)
  i64.const 0
  call $~lib/near-runtime-ts/runtime_api/runtime_api.input
  i64.const 0
  call $~lib/near-runtime-ts/runtime_api/runtime_api.register_len
  local.tee $1
  i64.const 4294967295
  i64.eq
  if
   call $~lib/near-runtime-ts/runtime_api/runtime_api.panic
  end
  i64.const 0
  i32.const 0
  local.get $1
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-runtime-ts/runtime_api/runtime_api.read_register
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 4880
   i32.const 64
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<assembly/model/FooBar>> (; 225 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<assembly/model/FooBar>#constructor (; 226 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 33
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Value> (; 227 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5104
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5104
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5104
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $~lib/array/Array<assembly/model/FooBar>#push (; 228 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decodeArray<assembly/model/FooBar> (; 229 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<assembly/model/FooBar>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 230 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 7344
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 7344
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<assembly/model/FooBar>
 )
 (func $assembly/main/convertFoobars~anonymous|0 (; 231 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 4
  i32.const 31
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass> (; 232 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 32
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $4
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__get (; 233 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/near-bindgen-as/index/JSONEncoder> (; 234 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/FooBar#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $assembly/model/ContainerClass#_encode (; 235 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 157
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 7424
  local.get $2
  call $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array> (; 236 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/model/ContainerClass>#__get
     local.set $3
     local.get $2
     local.set $4
     local.get $3
     if
      local.get $3
      i32.const 0
      local.get $4
      call $assembly/model/ContainerClass#_encode
      drop
     else
      local.get $4
      i32.const 0
      call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline (; 237 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>
 )
 (func $~lib/near-bindgen-as/index/value_return (; 238 ;) (param $0 i64) (param $1 i64)
  local.get $0
  local.get $1
  call $~lib/near-runtime-ts/runtime_api/runtime_api.value_return
 )
 (func $assembly/test/__wrapper_convertFoobars (; 239 ;)
  (local $0 i32)
  call $~lib/near-bindgen-as/index/getInput
  i32.const 7312
  call $~lib/near-bindgen-as/index/decode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.const 1
  call $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass>
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 240 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/string/String>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 6192
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 6192
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<~lib/string/String>
 )
 (func $assembly/test/__wrapper_getStringArrayLength (; 241 ;)
  (local $0 i32)
  i32.const 7456
  call $~lib/near-bindgen-as/index/getInput
  i32.const 3056
  call $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $0
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log<~lib/string/String>
  local.get $0
  i32.load offset=12
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/ContainerClass> (; 242 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Obj> (; 243 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 5104
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 5104
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 5104
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 7
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $assembly/model/ContainerClass#_decode (; 244 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 7424
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 7424
   call $~lib/near-bindgen-as/index/decode<assembly/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load
  end
  local.set $1
  local.get $2
  i32.load
  drop
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/ContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj> (; 245 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/ContainerClass>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 7568
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/ContainerClass>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 7568
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 7568
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 31
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/ContainerClass#_decode
 )
 (func $assembly/main/rewrapFoobar (; 246 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 34
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.tee $2
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 35
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $4
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 33
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $1
  i32.load offset=4
  local.get $0
  i32.load
  i32.store
  local.get $1
  i32.store
  local.get $3
  i32.load
  drop
  local.get $4
  i32.store
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get (; 247 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__get (; 248 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 992
   i32.const 1248
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 3120
   i32.const 1248
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/FooBar>,~lib/near-bindgen-as/index/JSONEncoder> (; 249 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/model/FooBar>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/near-bindgen-as/index/JSONEncoder> (; 250 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
     i32.const 0
     local.get $2
     call $~lib/near-bindgen-as/index/encode<~lib/array/Array<assembly/model/FooBar>,~lib/near-bindgen-as/index/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $assembly/model/AnotherContainerClass#_encode (; 251 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 1408
   i32.const 199
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 7312
  local.get $2
  call $~lib/near-bindgen-as/index/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/near-bindgen-as/index/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline (; 252 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/AnotherContainerClass#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $assembly/test/__wrapper_rewrapFoobar (; 253 ;)
  (local $0 i32)
  call $~lib/near-bindgen-as/index/getInput
  i32.const 7520
  call $~lib/near-bindgen-as/index/decode<assembly/model/ContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj>
  call $assembly/main/rewrapFoobar
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/AnotherContainerClass> (; 254 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>> (; 255 ;) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor (; 256 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 35
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Value> (; 257 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 7344
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 7344
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<assembly/model/FooBar>
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push (; 258 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decodeArray<~lib/array/Array<assembly/model/FooBar>> (; 259 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 6112
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 24
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4880
   i32.const 138
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
    i32.const 976
    call $~lib/near-bindgen-as/index/decode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 260 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 7680
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 7680
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/near-bindgen-as/index/decodeArray<~lib/array/Array<assembly/model/FooBar>>
 )
 (func $assembly/model/AnotherContainerClass#_decode (; 261 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 7312
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 7312
   call $~lib/near-bindgen-as/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load
  end
  local.set $1
  local.get $2
  i32.load
  drop
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/near-bindgen-as/index/decode<assembly/model/AnotherContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj> (; 262 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 976
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 22
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4880
    i32.const 156
    i32.const 36
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/JSON/JSON.Obj#get
   local.tee $0
   i32.eqz
   if
    call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/AnotherContainerClass>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4880
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 5072
     i32.const 7616
     call $~lib/string/String.__concat
     i32.const 5136
     call $~lib/string/String.__concat
     i32.const 4880
     i32.const 167
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $~lib/near-bindgen-as/index/isReallyNullable<assembly/model/AnotherContainerClass>
   i32.eqz
   if
    i32.const 5184
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5216
    call $~lib/string/String.__concat
    i32.const 7616
    call $~lib/string/String.__concat
    i32.const 5264
    call $~lib/string/String.__concat
    i32.const 4880
    i32.const 193
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 22
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 7616
   call $~lib/string/String.__concat
   i32.const 5360
   call $~lib/string/String.__concat
   i32.const 4880
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 34
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 22
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4880
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $assembly/model/AnotherContainerClass#_decode
 )
 (func $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline (; 263 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 976
    local.set $1
   end
   i32.const 0
   call $~lib/near-bindgen-as/index/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/FooBar#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $assembly/test/__wrapper_unwrapFoobar (; 264 ;)
  (local $0 i32)
  call $~lib/near-bindgen-as/index/getInput
  i32.const 7520
  call $~lib/near-bindgen-as/index/decode<assembly/model/AnotherContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#__get
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $assembly/test/__wrapper_stringOrNull (; 265 ;)
  (local $0 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $assembly/test/__wrapper_stringAliasTest (; 266 ;)
  (local $0 i32)
  call $~lib/near-bindgen-as/index/getInput
  i32.const 6864
  call $~lib/near-bindgen-as/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.const 7792
  call $~lib/string/String.__concat
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $assembly/test/__wrapper_classOrNull (; 267 ;)
  (local $0 i32)
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $assembly/test/__wrapper_classAndNull (; 268 ;)
  (local $0 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  i32.const 976
  i32.const 0
  call $~lib/near-bindgen-as/index/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-bindgen-as/index/value_return
 )
 (func $~start (; 269 ;)
  i32.const 8112
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $~lib/near-runtime-ts/storage/storage
  i32.const 0
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $~lib/near-runtime-ts/contract/context
  call $start:~lib/assemblyscript-json/index
 )
)
