(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$ijii (func (param i64 i32 i32) (result i32)))
 (import "env" "input" (func $nearFile/input (param i64)))
 (import "env" "register_len" (func $nearFile/register_len (param i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "panic" (func $nearFile/panic))
 (import "env" "read_register" (func $nearFile/read_register (param i64 i64)))
 (import "env" "value_return" (func $nearFile/value_return (param i64 i64)))
 (import "env" "log_utf8" (func $~lib/near-runtime-ts/runtime_api/runtime_api.log_utf8 (param i64 i64)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 32) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 64) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 88) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 112) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 136) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 184) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 208) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 240) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 272) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 296) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 320) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 392) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 536) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00b\00l\00o\00c\00k\00_\00i\00n\00d\00e\00x\00_\00s\00e\00e\00d\00e\00d\00_\00a\00t\00")
 (data (i32.const 600) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00k\00e\00y\00")
 (data (i32.const 656) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00i\00n\00d\00e\00x\00_\00k\00e\00y\00")
 (data (i32.const 720) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 768) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 824) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 840) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 896) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 952) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 1008) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 1096) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 1120) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1168) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 1216) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1328) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 1352) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1376) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 1416) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1440) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 1520) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 1592) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1664) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 1688) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1712) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 1760) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1784) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 1808) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1832) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 1856) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1880) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 1904) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 1960) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 2040) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2064) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 2104) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 2168) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 2264) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 2328) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 2368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 2392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 2416) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 2472) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 2504) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 2560) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 2600) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 2632) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 2672) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00")
 (data (i32.const 2744) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 2792) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00n\00e\00a\00r\00F\00i\00l\00e\00")
 (data (i32.const 2824) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 2872) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 2944) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00F\00o\00o\00B\00a\00r\00")
 (data (i32.const 2976) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 3048) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 3072) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 3096) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 3120) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r\00")
 (data (i32.const 3176) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 3200) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 3224) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 3256) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 3280) "~\00\00\00\01\00\00\00\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3424) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00u\006\004\00_\00z\00e\00r\00o\00")
 (data (i32.const 3456) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 3488) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 3512) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 3536) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 3560) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3608) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 3632) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 3664) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 3728) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 3768) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 3808) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 3832) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00>\00")
 (data (i32.const 3936) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00")
 (data (i32.const 4008) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 4040) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\003\002\00>\00")
 (data (i32.const 4080) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 4112) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00i\003\002\00>\00")
 (data (i32.const 4152) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 4184) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\001\002\008\00")
 (data (i32.const 4208) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 4256) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 4312) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 4408) "\10\00\00\00\01\00\00\00\1f\00\00\00\10\00\00\00\e8\10\00\00\e8\10\00\00K\00\00\00K\00\00\00")
 (data (i32.const 4440) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 4480) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00/\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00>\00")
 (data (i32.const 4568) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00A\00r\00r\00")
 (data (i32.const 4600) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\006\004\00>\00")
 (data (i32.const 4640) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 4664) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 4688) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 4712) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 4736) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 4760) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 4784) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 4872) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 5288) "\10\00\00\00\01\00\00\00\1a\00\00\00\10\00\00\00\18\13\00\00\18\13\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 5320) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 5408) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 5440) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 5536) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 5608) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 5648) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 5712) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 5752) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 5800) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00A\00n\00o\00t\00h\00e\00r\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 5864) "\\\00\00\00\01\00\00\00\01\00\00\00\\\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00>\00")
 (data (i32.const 5976) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00t\00r\00")
 (data (i32.const 6000) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00 \00W\00o\00r\00l\00d\00")
 (data (i32.const 6032) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00 \00t\00e\00s\00t\00")
 (data (i32.const 6080) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00*\00\00\00\0b\00\00\00")
 (data (i32.const 6104) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 6160) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 6192) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00 \18\00\00")
 (data (i32.const 6216) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00W\00o\00r\00l\00d\00")
 (data (i32.const 6248) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00X\18\00\00")
 (data (i32.const 6272) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00")
 (data (i32.const 6304) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00B\00e\00f\00o\00r\00e\00:\00 \00")
 (data (i32.const 6336) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00A\00f\00t\00e\00r\00:\00 \00 \00")
 (data (i32.const 6368) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 6416) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 6456) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00N\00u\00l\00l\00a\00b\00l\00e\00s\00")
 (data (i32.const 6496) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00T\00e\00s\00t\00 \00P\00a\00s\00s\00e\00d\00")
 (data (i32.const 6536) "%\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\n\00\00\00\98 A\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\n\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93 \00\00\02\00\00\00\13\01\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $assembly/main/convertFoobars~anonymous|0)
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 24))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 48))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 80))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/storage/storage (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 200))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 224))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 256))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 288))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_RATING_SUFFIX i32 (i32.const 312))
 (global $~lib/near-runtime-ts/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $~lib/bignum/utils/HEX_CHARS i32 (i32.const 336))
 (global $~lib/bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $~lib/near-runtime-ts/contract/context (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/base64/base64.PADCHAR i32 (i32.const 384))
 (global $~lib/near-runtime-ts/base64/base64.ALPHA i32 (i32.const 408))
 (global $~lib/near-runtime-ts/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 552))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_KEY i32 (i32.const 616))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 672))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $nearFile/JSON.handler (mut i32) (i32.const 0))
 (global $nearFile/JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/bignum/utils/RadixCharsTable i32 (i32.const 4424))
 (global $~lib/bignum/integer/u128/HEX_CHARS i32 (i32.const 336))
 (global $~lib/rt/__rtti_base i32 (i32.const 6536))
 (global $~lib/heap/__heap_base i32 (i32.const 6836))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "convertFoobars" (func $assembly/test/__wrapper_convertFoobars))
 (export "getStringArrayLength" (func $assembly/test/__wrapper_getStringArrayLength))
 (export "rewrapFoobar" (func $assembly/test/__wrapper_rewrapFoobar))
 (export "unwrapFoobar" (func $assembly/test/__wrapper_unwrapFoobar))
 (export "stringOrNull" (func $assembly/test/__wrapper_stringOrNull))
 (export "stringAliasTest" (func $assembly/test/__wrapper_stringAliasTest))
 (export "runTest" (func $assembly/test/runTest))
 (start $start)
 (func $~lib/string/String#get:length (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:~lib/assemblyscript-json/decoder (; 9 ;) (type $FUNCSIG$v)
  i32.const 104
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 128
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 152
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 176
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $start:~lib/assemblyscript-json/index (; 10 ;) (type $FUNCSIG$v)
  call $start:~lib/assemblyscript-json/decoder
 )
 (func $start:~lib/rt/index-stub (; 11 ;) (type $FUNCSIG$v)
  call $start:~lib/assemblyscript-json/index
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const -1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 16 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/near-runtime-ts/storage/Storage#constructor (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/near-runtime-ts/storage (; 18 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#constructor
  global.set $~lib/near-runtime-ts/storage/storage
 )
 (func $~lib/near-runtime-ts/contract/Context#constructor (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/near-runtime-ts/contract (; 20 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/near-runtime-ts/contract/Context#constructor
  global.set $~lib/near-runtime-ts/contract/context
 )
 (func $start:~lib/near-runtime-ts/index (; 21 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/storage
  call $start:~lib/near-runtime-ts/contract
 )
 (func $start:assembly/main (; 22 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/index
 )
 (func $start:assembly/test (; 23 ;) (type $FUNCSIG$v)
  call $start:assembly/main
 )
 (func $~lib/assemblyscript-json/decoder/JSONHandler#constructor (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONHandler#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 26 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
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
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
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
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 736
   i32.const 784
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
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<nearFile/Value>#constructor (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 11
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/Handler#constructor (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 9
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<nearFile/Value>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#constructor (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 12
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $start:nearFile (; 31 ;) (type $FUNCSIG$v)
  i32.const 0
  call $nearFile/Handler#constructor
  global.set $nearFile/JSON.handler
  i32.const 0
  global.get $nearFile/JSON.handler
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#constructor
  global.set $nearFile/JSON.decoder
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $nearFile/getInput (; 33 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i64)
  (local $1 i32)
  i64.const 0
  call $nearFile/input
  i64.const 0
  call $nearFile/register_len
  local.set $0
  local.get $0
  i64.const 4294967295
  i64.eq
  if
   call $nearFile/panic
  end
  i32.const 0
  local.get $0
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i64.const 0
  local.get $1
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 13
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 840
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#__get (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 856
   i32.const 912
   i32.const 148
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#isWhitespace (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 968
   i32.const 1024
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
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $nearFile/Value#constructor (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 10
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 736
   i32.const 784
   i32.const 54
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#clear (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/stub/__release
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
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#constructor (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 15
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#clear
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 16
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/Obj#constructor (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 14
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $2
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $nearFile/Value.Object (; 47 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $nearFile/Obj#constructor
 )
 (func $~lib/rt/__instanceof (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   loop $continue|0
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
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/array/Array<nearFile/Value>#get:length (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/util/memory/memcpy (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else
     i32.const 0
    end
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
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
     br $continue|1
    end
    unreachable
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
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
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
        br $continue|3
       end
       unreachable
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
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
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
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
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
 (func $~lib/memory/memory.copy (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
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
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
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
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
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
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
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
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1184
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
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1184
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
 (func $~lib/array/ensureSize (; 53 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 736
    i32.const 1136
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
    call $~lib/rt/stub/__retain
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
 (func $~lib/array/Array<nearFile/Value>#push (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<nearFile/Value>#__unchecked_get (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<nearFile/Value>#__get (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<nearFile/Value>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $nearFile/Handler#get:peek (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<nearFile/Value>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<nearFile/Value>#__get
 )
 (func $~lib/util/hash/hashStr (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const -2128831035
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if
   block $break|0
    i32.const 0
    local.set $2
    local.get $0
    call $~lib/string/String#get:length
    i32.const 1
    i32.shl
    local.set $3
    loop $loop|0
     local.get $2
     local.get $3
     i32.lt_u
     i32.eqz
     br_if $break|0
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/util/string/compareImpl (; 59 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $break|0
    loop $continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $4
    local.tee $7
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load16_u
    local.set $7
    local.get $6
    i32.load16_u
    local.set $8
    local.get $7
    local.get $8
    i32.ne
    if
     local.get $7
     local.get $8
     i32.sub
     local.set $9
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $9
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $continue|1
   end
   unreachable
  end
  i32.const 0
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#find (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $4
     local.get $1
     call $~lib/rt/stub/__release
     local.get $4
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#has (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
  i32.const 0
  i32.ne
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 63 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#rehash (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load
     i32.store
     local.get $10
     local.get $9
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
      local.get $9
      i32.load
      call $~lib/rt/stub/__retain
      local.set $11
      local.get $11
      call $~lib/util/hash/hashStr
      local.set $12
      local.get $11
      call $~lib/rt/stub/__release
      local.get $12
      br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=8
     local.get $12
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $9
   call $~lib/rt/stub/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $10
  local.get $5
  local.tee $11
  local.get $10
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/stub/__retain
   drop
   local.get $10
   call $~lib/rt/stub/__release
  end
  local.get $11
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#set (; 65 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $3
   call $~lib/util/hash/hashStr
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  local.set $5
  local.get $0
  local.get $1
  local.get $5
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
  local.set $6
  local.get $6
  if
   local.get $6
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $6
    local.get $2
    call $~lib/rt/stub/__retain
    i32.store offset=4
    local.get $3
    call $~lib/rt/stub/__release
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
    call $~lib/map/Map<~lib/string/String,nearFile/Value>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.set $6
   local.get $6
   local.get $1
   call $~lib/rt/stub/__retain
   i32.store
   local.get $6
   local.get $2
   call $~lib/rt/stub/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $5
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $6
   local.get $4
   i32.load
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Obj#set (; 66 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#has
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
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#set
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Arr#push (; 67 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<nearFile/Value>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Handler#addValue (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/string/String#get:length
  i32.const 0
  i32.eq
  if (result i32)
   local.get $2
   local.tee $3
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $3
    i32.const 14
    call $~lib/rt/__instanceof
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load
   call $~lib/array/Array<nearFile/Value>#get:length
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<nearFile/Value>#push
   drop
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  call $nearFile/Handler#get:peek
  local.tee $3
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if
   local.get $0
   call $nearFile/Handler#get:peek
   local.tee $4
   local.get $1
   local.get $2
   call $nearFile/Obj#set
   local.get $4
   call $~lib/rt/stub/__release
  else
   local.get $0
   call $nearFile/Handler#get:peek
   local.tee $4
   local.tee $5
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $5
    i32.const 17
    call $~lib/rt/__instanceof
   end
   if
    local.get $0
    call $nearFile/Handler#get:peek
    local.tee $5
    local.get $2
    call $nearFile/Arr#push
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Handler#pushObject (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  call $nearFile/Value.Object
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/Handler#addValue
  local.get $0
  i32.load
  local.get $2
  call $~lib/array/Array<nearFile/Value>#push
  drop
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.getPtr (; 70 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 1608
   i32.const 585
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.tee $7
    i32.const 1
    i32.add
    local.set $3
    local.get $7
    i32.load8_u
    local.set $7
    local.get $7
    i32.const 128
    i32.lt_u
    if
     local.get $2
     if (result i32)
      local.get $7
      i32.eqz
     else
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $6
     local.get $7
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
    else
     local.get $7
     i32.const 191
     i32.gt_u
     if (result i32)
      local.get $7
      i32.const 224
      i32.lt_u
     else
      i32.const 0
     end
     if
      local.get $4
      local.get $3
      i32.sub
      i32.const 1
      i32.lt_u
      if
       br $break|0
      end
      local.get $6
      local.get $7
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      local.get $3
      local.tee $8
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.load8_u
      i32.const 63
      i32.and
      i32.or
      i32.store16
      local.get $6
      i32.const 2
      i32.add
      local.set $6
     else
      local.get $7
      i32.const 239
      i32.gt_u
      if (result i32)
       local.get $7
       i32.const 365
       i32.lt_u
      else
       i32.const 0
      end
      if
       local.get $4
       local.get $3
       i32.sub
       i32.const 3
       i32.lt_u
       if
        br $break|0
       end
       local.get $7
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=2
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       local.set $7
       local.get $3
       i32.const 3
       i32.add
       local.set $3
       local.get $6
       i32.const 55296
       local.get $7
       i32.const 10
       i32.shr_u
       i32.add
       i32.store16
       local.get $6
       i32.const 56320
       local.get $7
       i32.const 1023
       i32.and
       i32.add
       i32.store16 offset=2
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      else
       local.get $4
       local.get $3
       i32.sub
       i32.const 2
       i32.lt_u
       if
        br $break|0
       end
       local.get $6
       local.get $7
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      end
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
  call $~lib/rt/stub/__retain
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.readString (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/assemblyscript-json/util/index/Buffer.getPtr
  local.get $1
  i32.add
  local.get $2
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $2
  i32.const 1
  i32.sub
  call $~lib/assemblyscript-json/util/index/Buffer.readString
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
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
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/DecoderState#readString
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/util/string/joinStringArray (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 840
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $4
   if (result i32)
    local.get $4
   else
    i32.const 840
   end
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $6
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    local.get $6
    local.tee $8
    i32.ne
    if
     local.get $7
     call $~lib/rt/stub/__retain
     drop
     local.get $8
     call $~lib/rt/stub/__release
    end
    local.get $7
    local.set $6
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $5
     local.get $6
     call $~lib/string/String#get:length
     i32.add
     local.set $5
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.set $9
  local.get $2
  call $~lib/string/String#get:length
  local.set $10
  local.get $5
  local.get $10
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $11
  block $break|1
   i32.const 0
   local.set $4
   loop $loop|1
    local.get $4
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $6
    local.tee $7
    i32.ne
    if
     local.get $8
     call $~lib/rt/stub/__retain
     drop
     local.get $7
     call $~lib/rt/stub/__release
    end
    local.get $8
    local.set $6
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $~lib/string/String#get:length
     local.set $8
     local.get $11
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $8
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $8
     i32.add
     local.set $9
    end
    local.get $10
    if
     local.get $11
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $10
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $10
     i32.add
     local.set $9
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|1
   end
   unreachable
  end
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $7
  local.get $6
  local.tee $4
  i32.ne
  if
   local.get $7
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $7
  local.set $6
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $11
   local.get $9
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $11
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 77 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $2
  local.get $3
  local.get $1
  call $~lib/util/string/joinStringArray
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $~lib/rt/__allocArray (; 78 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit (; 79 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 18
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 1920
   i32.const 1024
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/string/String.fromCodePoint (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1114111
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 1608
   i32.const 22
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  i32.const 2
  local.get $1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $1
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.store16
  else
   local.get $0
   i32.const 65536
   i32.sub
   local.set $0
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.add
   local.set $3
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.add
   local.set $4
   local.get $2
   local.get $4
   local.get $3
   i32.const 16
   i32.shl
   i32.or
   i32.store
  end
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode (; 81 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.gt_s
  local.set $2
  i32.const 2
  local.get $2
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.get $0
  i32.store16
  local.get $2
  if
   local.get $3
   local.get $1
   i32.store16 offset=2
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 82 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/string/String.fromCharCode
 )
 (func $~lib/string/String#concat (; 83 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 80
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 840
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 80
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readEscapedChar (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  local.set $1
  local.get $1
  i32.const 1432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1432
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1656
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1656
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1680
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1680
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1704
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1728
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1752
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1776
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1800
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1824
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1848
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1872
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1896
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 1976
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 1024
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 840
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readString (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  i32.const 1432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 1456
   i32.const 1024
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
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 1536
    i32.const 1024
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1432
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 840
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else
    local.get $3
    i32.const 1656
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
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
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseKey (; 87 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  i32.const 2056
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2080
   i32.const 1024
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<nearFile/Value>#pop (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2184
   i32.const 1136
   i32.const 285
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
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $nearFile/Handler#popObject (; 89 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/array/Array<nearFile/Value>#get:length
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<nearFile/Value>#pop
   call $~lib/rt/stub/__release
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseObject (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 1112
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
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 840
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $nearFile/Handler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
     i32.const 1344
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
      i32.const 1368
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1392
       i32.const 1024
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   i32.const 1344
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 2120
    i32.const 1024
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $nearFile/Handler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/Arr#constructor (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 17
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<nearFile/Value>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $nearFile/Value.Array (; 92 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $nearFile/Arr#constructor
 )
 (func $nearFile/Handler#pushArray (; 93 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  call $nearFile/Value.Array
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/Handler#addValue
  local.get $0
  i32.load
  local.get $2
  call $~lib/array/Array<nearFile/Value>#push
  drop
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/Handler#popArray (; 94 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/array/Array<nearFile/Value>#get:length
  i32.const 1
  i32.gt_s
  if
   local.get $0
   i32.load
   call $~lib/array/Array<nearFile/Value>#pop
   call $~lib/rt/stub/__release
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseArray (; 95 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2232
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
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 840
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $nearFile/Handler#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
      i32.const 1368
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1392
       i32.const 1024
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 2280
    i32.const 1024
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $nearFile/Handler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/Str#constructor (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 19
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $nearFile/Value.String (; 97 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.get $0
  call $nearFile/Str#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $nearFile/Handler#setString (; 98 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $nearFile/Value.String
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $nearFile/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseString (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 1432
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readString
  local.tee $1
  call $nearFile/Handler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert (; 100 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 2344
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 2384
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 1024
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Bools#constructor (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1
   i32.const 20
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
  local.get $1
  i32.store8
  local.get $0
 )
 (func $nearFile/Value.Bool (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $nearFile/Bools#constructor
 )
 (func $nearFile/Handler#setBoolean (; 103 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $nearFile/Value.Bool
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $nearFile/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseBoolean (; 104 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 48
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $nearFile/Handler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 24
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $nearFile/Handler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $nearFile/Num#constructor (; 105 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 21
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $nearFile/Value.Number (; 106 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  call $nearFile/Num#constructor
 )
 (func $nearFile/Handler#setInteger (; 107 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $nearFile/Value.Number
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $nearFile/Handler#addValue
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNumber (; 108 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2408
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $nearFile/Handler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $nearFile/Null#constructor (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 22
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $nearFile/Value#constructor
  local.set $0
  local.get $0
 )
 (func $nearFile/Value.Null (; 110 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $nearFile/Null#constructor
 )
 (func $nearFile/Handler#setNull (; 111 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  call $nearFile/Value.Null
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/Handler#addValue
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNull (; 112 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 80
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $nearFile/Handler#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#deserialize (; 114 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 2432
   i32.const 1024
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $nearFile/Handler#reset (; 115 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    i32.load
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load
    call $~lib/array/Array<nearFile/Value>#pop
    call $~lib/rt/stub/__release
    br $continue|0
   end
   unreachable
  end
 )
 (func $nearFile/JSON.parse (; 116 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  global.get $nearFile/JSON.decoder
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#deserialize
  global.get $nearFile/JSON.decoder
  i32.load
  call $nearFile/Handler#get:peek
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  global.get $nearFile/JSON.decoder
  i32.load
  call $nearFile/Handler#reset
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/string/String.__ne (; 117 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#get (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   call $~lib/rt/stub/__release
   i32.const 2520
   i32.const 2576
   i32.const 111
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/Obj#get (; 119 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#has
  i32.eqz
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#get
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/isNullable<~lib/array/Array<assembly/model/FooBar>> (; 120 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<assembly/model/FooBar>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<assembly/model/FooBar>#constructor (; 121 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 30
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/isNullable<assembly/model/FooBar> (; 122 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<assembly/model/FooBar>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $assembly/model/FooBar#constructor (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 68
   i32.const 24
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
  i32.const 3064
  call $~lib/rt/stub/__retain
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
 (func $nearFile/Obj#has (; 124 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#has
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/isNullable<i32> (; 125 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<i32>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/decode<i32,nearFile/Obj> (; 126 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<i32>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3112
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 21
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3112
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3136
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.load
  i32.wrap_i64
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  return
 )
 (func $nearFile/isNullable<u32> (; 127 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<u32>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/decode<u32,nearFile/Obj> (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<u32>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3216
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 21
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3216
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3136
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.load
  i32.wrap_i64
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  return
 )
 (func $nearFile/isNullable<u64> (; 129 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<u64>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/util/string/isSpace (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.le_s
  if
   local.get $0
   i32.const 32
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 160
    i32.eq
   end
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
 (func $~lib/util/string/strtol<i64> (; 131 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i64.const 0
   local.set $3
   local.get $0
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.set $4
  local.get $4
  i32.load16_u
  local.set $5
  i64.const 1
  local.set $6
  block $break|0
   loop $continue|0
    local.get $5
    call $~lib/util/string/isSpace
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $5
  i32.const 45
  i32.eq
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    i64.const 0
    local.set $3
    local.get $0
    call $~lib/rt/stub/__release
    local.get $3
    return
   end
   local.get $4
   i32.const 2
   i32.add
   local.tee $4
   i32.load16_u
   local.set $5
   i64.const -1
   local.set $6
  else
   local.get $5
   i32.const 43
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    if
     i64.const 0
     local.set $3
     local.get $0
     call $~lib/rt/stub/__release
     local.get $3
     return
    end
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
   end
  end
  local.get $1
  i32.eqz
  if
   local.get $5
   i32.const 48
   i32.eq
   if (result i32)
    local.get $2
    i32.const 2
    i32.gt_s
   else
    i32.const 0
   end
   if
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $4
         i32.const 2
         i32.add
         i32.load16_u
         i32.const 32
         i32.or
         local.set $7
         local.get $7
         i32.const 98
         i32.eq
         br_if $case0|1
         local.get $7
         i32.const 111
         i32.eq
         br_if $case1|1
         local.get $7
         i32.const 120
         i32.eq
         br_if $case2|1
         br $case3|1
        end
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        local.get $2
        i32.const 2
        i32.sub
        local.set $2
        i32.const 2
        local.set $1
        br $break|1
       end
       local.get $4
       i32.const 4
       i32.add
       local.set $4
       local.get $2
       i32.const 2
       i32.sub
       local.set $2
       i32.const 8
       local.set $1
       br $break|1
      end
      local.get $4
      i32.const 4
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 16
      local.set $1
      br $break|1
     end
     i32.const 10
     local.set $1
    end
   else
    i32.const 10
    local.set $1
   end
  else
   local.get $1
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 36
    i32.gt_s
   end
   if
    i64.const 0
    local.set $3
    local.get $0
    call $~lib/rt/stub/__release
    local.get $3
    return
   end
  end
  i64.const 0
  local.set $8
  block $break|2
   loop $continue|2
    local.get $2
    local.tee $7
    i32.const 1
    i32.sub
    local.set $2
    local.get $7
    i32.eqz
    br_if $break|2
    local.get $4
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u
    if
     local.get $5
     i32.const 48
     i32.sub
     local.set $5
    else
     local.get $5
     i32.const 65
     i32.sub
     i32.const 25
     i32.le_u
     if
      local.get $5
      i32.const 65
      i32.const 10
      i32.sub
      i32.sub
      local.set $5
     else
      local.get $5
      i32.const 97
      i32.sub
      i32.const 25
      i32.le_u
      if
       local.get $5
       i32.const 97
       i32.const 10
       i32.sub
       i32.sub
       local.set $5
      else
       br $break|2
      end
     end
    end
    local.get $5
    local.get $1
    i32.ge_u
    if
     br $break|2
    end
    local.get $8
    local.get $1
    i64.extend_i32_s
    i64.mul
    local.get $5
    i64.extend_i32_u
    i64.add
    local.set $8
    local.get $4
    i32.const 2
    i32.add
    local.set $4
    br $continue|2
   end
   unreachable
  end
  local.get $6
  local.get $8
  i64.mul
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/number/I64.parseInt (; 132 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/decode<u64,nearFile/Obj> (; 133 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    i64.extend_i32_u
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $7
   local.get $3
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $8
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $3
  end
  local.get $3
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<u64>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3272
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i64.extend_i32_u
   local.set $6
   local.get $8
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $6
   return
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3272
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3296
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2808
   i32.const 391
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $10
  i32.const 0
  call $~lib/number/I64.parseInt
  local.set $6
  local.get $7
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<i64> (; 134 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<i64>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/decode<i64,nearFile/Obj> (; 135 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    i64.extend_i32_u
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $7
   local.get $3
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $8
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $3
  end
  local.get $3
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<i64>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3504
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i64.extend_i32_u
   local.set $6
   local.get $8
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $6
   return
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3504
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3296
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2808
   i32.const 391
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $10
  i32.const 0
  call $~lib/number/I64.parseInt
  local.set $6
  local.get $7
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<bool> (; 136 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<bool>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/decode<bool,nearFile/Obj> (; 137 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<bool>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3552
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 20
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3552
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3576
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 383
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load8_u
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  return
 )
 (func $nearFile/isNullable<~lib/string/String> (; 138 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/string/String>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
 )
 (func $nearFile/decode<~lib/string/String,nearFile/Obj> (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3648
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3680
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2808
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $nearFile/isNullable<~lib/typedarray/Uint8Array> (; 140 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/typedarray/Uint8Array>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/string/String#charAt (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 840
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String#indexOf (; 142 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $5
  i32.eqz
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $6
  local.get $4
  local.get $6
  i32.gt_s
  select
  local.tee $4
  local.get $5
  local.tee $6
  local.get $4
  local.get $6
  i32.lt_s
  select
  local.set $7
  block $break|0
   local.get $5
   local.get $3
   i32.sub
   local.set $5
   loop $loop|0
    local.get $7
    local.get $5
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $7
    local.get $1
    i32.const 0
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $7
     local.set $4
     local.get $1
     call $~lib/rt/stub/__release
     local.get $4
     return
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-runtime-ts/base64/base64.getByte64 (; 143 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  global.get $~lib/near-runtime-ts/base64/base64.ALPHA
  local.get $0
  local.get $1
  call $~lib/string/String#charAt
  local.tee $2
  i32.const 0
  call $~lib/string/String#indexOf
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#__set (; 144 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 856
   i32.const 912
   i32.const 159
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
 (func $~lib/near-runtime-ts/base64/base64.decode (; 145 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $3
  local.get $0
  call $~lib/string/String#get:length
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $5
   local.get $0
   call $~lib/rt/stub/__release
   local.get $5
   return
  end
  local.get $0
  local.get $4
  i32.const 1
  i32.sub
  call $~lib/string/String#charAt
  local.tee $5
  i32.const 384
  call $~lib/string/String.__eq
  if
   i32.const 1
   local.set $3
   local.get $0
   local.get $4
   i32.const 2
   i32.sub
   call $~lib/string/String#charAt
   local.tee $6
   i32.const 384
   call $~lib/string/String.__eq
   if
    i32.const 2
    local.set $3
   end
   local.get $4
   i32.const 4
   i32.sub
   local.set $4
   local.get $6
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if (result i32)
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 3
   i32.mul
  else
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 1
   i32.add
   i32.const 3
   i32.mul
  end
  local.set $6
  local.get $3
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 3
   local.get $3
   i32.sub
  else
   i32.const 0
  end
  local.set $7
  local.get $6
  local.get $7
  i32.add
  local.set $8
  i32.const 0
  local.get $8
  call $~lib/typedarray/Uint8Array#constructor
  local.set $9
  i32.const 0
  local.set $10
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 3
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.or
    local.set $2
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  block $break|1
   block $case1|1
    block $case0|1
     local.get $3
     local.set $11
     local.get $11
     i32.const 1
     i32.eq
     br_if $case0|1
     local.get $11
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $0
    local.get $1
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/base64/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.set $2
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    br $break|1
   end
   local.get $0
   local.get $1
   call $~lib/near-runtime-ts/base64/base64.getByte64
   i32.const 18
   i32.shl
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/near-runtime-ts/base64/base64.getByte64
   i32.const 12
   i32.shl
   i32.or
   local.set $2
   local.get $9
   local.get $10
   local.tee $11
   i32.const 1
   i32.add
   local.set $10
   local.get $11
   local.get $2
   i32.const 16
   i32.shr_u
   call $~lib/typedarray/Uint8Array#__set
   br $break|1
  end
  local.get $9
  local.set $11
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj> (; 146 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3784
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3680
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2808
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.tee $4
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $6
  local.get $4
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>> (; 147 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 25
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/isNullable<~lib/array/Array<~lib/string/String>> (; 149 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<~lib/string/String>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/decode<~lib/string/String,nearFile/Value> (; 150 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3648
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3680
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2808
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $nearFile/decodeArray<~lib/string/String> (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<~lib/string/String,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Value> (; 152 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3952
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<~lib/string/String>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 153 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/decodeArray<~lib/array/Array<~lib/string/String>> (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/Obj> (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3848
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<~lib/array/Array<~lib/string/String>>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<~lib/array/Array<u32>> (; 156 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<u32>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u32>#constructor (; 157 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 26
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/decode<u32,nearFile/Value> (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<u32>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3216
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 21
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3216
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3136
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.load
  i32.wrap_i64
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  return
 )
 (func $~lib/array/Array<u32>#push (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<u32> (; 160 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<u32,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<u32>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<u32>,nearFile/Obj> (; 161 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<u32>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4056
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<u32>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<~lib/array/Array<i32>> (; 162 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<i32>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<i32>#constructor (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 18
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/decode<i32,nearFile/Value> (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<i32>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3112
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 21
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3112
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3136
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.load
  i32.wrap_i64
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $8
  return
 )
 (func $~lib/array/Array<i32>#push (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<i32> (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<i32,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<i32>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<i32>,nearFile/Obj> (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<i32>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4128
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<i32>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<~lib/bignum/integer/u128/u128> (; 168 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/bignum/integer/u128/u128>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/bignum/integer/u128/u128#constructor (; 169 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
 (func $~lib/array/Array<u8>#__unchecked_get (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/bignum/globals/__multi3 (; 172 ;) (type $FUNCSIG$vijjjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
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
  global.set $~lib/bignum/globals/__res128_lo
  local.get $14
  global.set $~lib/bignum/globals/__res128_hi
 )
 (func $~lib/bignum/utils/atou128 (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   local.get $0
   call $~lib/rt/stub/__release
   i32.const 4224
   i32.const 4272
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $3
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.set $5
  local.get $2
  i32.const 1
  i32.eq
  if (result i32)
   local.get $5
   i32.const 48
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $3
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $5
  i32.const 45
  i32.eq
  local.set $6
  local.get $6
  if (result i32)
   local.get $6
  else
   local.get $5
   i32.const 43
   i32.eq
  end
  local.set $7
  local.get $0
  local.get $7
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   local.get $0
   local.get $7
   i32.const 1
   i32.add
   local.tee $7
   call $~lib/string/String#charCodeAt
   local.set $3
   local.get $3
   i32.const 120
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $3
    i32.const 88
    i32.eq
   end
   if
    i32.const 16
    local.set $1
    local.get $7
    i32.const 1
    i32.add
    local.set $7
   else
    local.get $3
    i32.const 111
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $3
     i32.const 79
     i32.eq
    end
    if
     i32.const 8
     local.set $1
     local.get $7
     i32.const 1
     i32.add
     local.set $7
    else
     local.get $3
     i32.const 98
     i32.eq
     if (result i32)
      i32.const 1
     else
      local.get $3
      i32.const 66
      i32.eq
     end
     if
      i32.const 2
      local.set $1
      local.get $7
      i32.const 1
      i32.add
      local.set $7
     end
    end
   end
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/bignum/integer/u128/u128#constructor
  local.tee $3
  call $~lib/rt/stub/__retain
  local.set $8
  global.get $~lib/bignum/utils/RadixCharsTable
  call $~lib/rt/stub/__retain
  local.set $9
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $1
       local.set $4
       local.get $4
       i32.const 2
       i32.eq
       br_if $case0|0
       local.get $4
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $4
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      block $break|1
       loop $continue|1
        local.get $0
        local.get $7
        call $~lib/string/String#charCodeAt
        i32.const 48
        i32.sub
        local.set $4
        local.get $4
        i32.const 2
        i32.ge_u
        if
         br $break|1
        end
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $11
        i32.const 1
        local.set $10
        local.get $10
        i32.const 127
        i32.and
        local.set $10
        local.get $10
        i64.extend_i32_s
        local.set $12
        local.get $12
        i64.const 127
        i64.add
        local.get $12
        i64.or
        i64.const 64
        i64.and
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $13
        local.get $12
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $14
        local.get $12
        i64.const 63
        i64.and
        local.set $12
        local.get $11
        i64.load
        local.set $15
        local.get $15
        local.get $12
        i64.shl
        local.set $16
        local.get $16
        local.get $14
        i64.const -1
        i64.xor
        i64.and
        local.set $17
        local.get $17
        local.get $11
        i64.load offset=8
        local.get $12
        i64.shl
        local.get $15
        i64.const 64
        local.get $12
        i64.sub
        i64.shr_u
        local.get $13
        i64.and
        i64.or
        local.get $14
        i64.and
        i64.or
        local.set $17
        i32.const 0
        local.get $16
        local.get $14
        i64.and
        local.get $17
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $18
        local.get $11
        call $~lib/rt/stub/__release
        local.get $18
        local.tee $11
        local.tee $18
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $18
         call $~lib/rt/stub/__retain
         drop
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $18
        local.set $8
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $19
        local.get $4
        i64.extend_i32_u
        local.set $12
        i32.const 0
        local.get $12
        i64.const 0
        call $~lib/bignum/integer/u128/u128#constructor
        local.tee $18
        call $~lib/rt/stub/__retain
        local.set $10
        i32.const 0
        local.get $19
        i64.load
        local.get $10
        i64.load
        i64.or
        local.get $19
        i64.load offset=8
        local.get $10
        i64.load offset=8
        i64.or
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $20
        local.get $10
        call $~lib/rt/stub/__release
        local.get $19
        call $~lib/rt/stub/__release
        local.get $20
        local.tee $19
        local.tee $20
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $20
         call $~lib/rt/stub/__retain
         drop
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $20
        local.set $8
        local.get $11
        call $~lib/rt/stub/__release
        local.get $18
        call $~lib/rt/stub/__release
        local.get $19
        call $~lib/rt/stub/__release
        local.get $7
        i32.const 1
        i32.add
        local.tee $7
        local.get $2
        i32.lt_s
        br_if $continue|1
       end
      end
      br $break|0
     end
     block $break|2
      loop $continue|2
       local.get $0
       local.get $7
       call $~lib/string/String#charCodeAt
       i32.const 48
       i32.sub
       local.set $19
       local.get $19
       i32.const 10
       i32.ge_u
       if
        br $break|2
       end
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $20
       i32.const 3
       local.set $10
       local.get $10
       i32.const 127
       i32.and
       local.set $10
       local.get $10
       i64.extend_i32_s
       local.set $12
       local.get $12
       i64.const 127
       i64.add
       local.get $12
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $17
       local.get $12
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $16
       local.get $12
       i64.const 63
       i64.and
       local.set $12
       local.get $20
       i64.load
       local.set $15
       local.get $15
       local.get $12
       i64.shl
       local.set $14
       local.get $14
       local.get $16
       i64.const -1
       i64.xor
       i64.and
       local.set $13
       local.get $13
       local.get $20
       i64.load offset=8
       local.get $12
       i64.shl
       local.get $15
       i64.const 64
       local.get $12
       i64.sub
       i64.shr_u
       local.get $17
       i64.and
       i64.or
       local.get $16
       i64.and
       i64.or
       local.set $13
       i32.const 0
       local.get $14
       local.get $16
       i64.and
       local.get $13
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $18
       local.get $20
       call $~lib/rt/stub/__release
       local.get $18
       local.tee $20
       call $~lib/rt/stub/__retain
       local.set $21
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $11
       i32.const 1
       local.set $4
       local.get $4
       i32.const 127
       i32.and
       local.set $4
       local.get $4
       i64.extend_i32_s
       local.set $13
       local.get $13
       i64.const 127
       i64.add
       local.get $13
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $14
       local.get $13
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $15
       local.get $13
       i64.const 63
       i64.and
       local.set $13
       local.get $11
       i64.load
       local.set $16
       local.get $16
       local.get $13
       i64.shl
       local.set $17
       local.get $17
       local.get $15
       i64.const -1
       i64.xor
       i64.and
       local.set $12
       local.get $12
       local.get $11
       i64.load offset=8
       local.get $13
       i64.shl
       local.get $16
       i64.const 64
       local.get $13
       i64.sub
       i64.shr_u
       local.get $14
       i64.and
       i64.or
       local.get $15
       i64.and
       i64.or
       local.set $12
       i32.const 0
       local.get $17
       local.get $15
       i64.and
       local.get $12
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $10
       local.get $11
       call $~lib/rt/stub/__release
       local.get $10
       local.tee $11
       call $~lib/rt/stub/__retain
       local.set $18
       local.get $18
       i64.load
       local.set $12
       local.get $21
       i64.load
       local.get $12
       i64.add
       local.set $17
       local.get $21
       i64.load offset=8
       local.get $18
       i64.load offset=8
       i64.add
       local.get $17
       local.get $12
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $16
       i32.const 0
       local.get $17
       local.get $16
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $4
       local.get $18
       call $~lib/rt/stub/__release
       local.get $21
       call $~lib/rt/stub/__release
       local.get $4
       local.tee $21
       local.tee $10
       local.get $8
       local.tee $18
       i32.ne
       if
        local.get $10
        call $~lib/rt/stub/__retain
        drop
        local.get $18
        call $~lib/rt/stub/__release
       end
       local.get $10
       local.set $8
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $18
       local.get $19
       i64.extend_i32_u
       local.set $13
       i32.const 0
       local.get $13
       i64.const 0
       call $~lib/bignum/integer/u128/u128#constructor
       local.tee $10
       call $~lib/rt/stub/__retain
       local.set $4
       local.get $4
       i64.load
       local.set $13
       local.get $18
       i64.load
       local.get $13
       i64.add
       local.set $16
       local.get $18
       i64.load offset=8
       local.get $4
       i64.load offset=8
       i64.add
       local.get $16
       local.get $13
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $17
       i32.const 0
       local.get $16
       local.get $17
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $22
       local.get $4
       call $~lib/rt/stub/__release
       local.get $18
       call $~lib/rt/stub/__release
       local.get $22
       local.tee $18
       local.tee $22
       local.get $8
       local.tee $4
       i32.ne
       if
        local.get $22
        call $~lib/rt/stub/__retain
        drop
        local.get $4
        call $~lib/rt/stub/__release
       end
       local.get $22
       local.set $8
       local.get $20
       call $~lib/rt/stub/__release
       local.get $11
       call $~lib/rt/stub/__release
       local.get $21
       call $~lib/rt/stub/__release
       local.get $10
       call $~lib/rt/stub/__release
       local.get $18
       call $~lib/rt/stub/__release
       local.get $7
       i32.const 1
       i32.add
       local.tee $7
       local.get $2
       i32.lt_s
       br_if $continue|2
      end
     end
     br $break|0
    end
    block $break|3
     loop $continue|3
      local.get $0
      local.get $7
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.set $18
      local.get $18
      i32.const 74
      i32.gt_u
      if
       br $break|3
      end
      local.get $9
      local.get $18
      call $~lib/array/Array<u8>#__get
      local.set $10
      local.get $10
      i32.const 16
      i32.ge_u
      if
       br $break|3
      end
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $22
      i32.const 4
      local.set $4
      local.get $4
      i32.const 127
      i32.and
      local.set $4
      local.get $4
      i64.extend_i32_s
      local.set $17
      local.get $17
      i64.const 127
      i64.add
      local.get $17
      i64.or
      i64.const 64
      i64.and
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $16
      local.get $17
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $13
      local.get $17
      i64.const 63
      i64.and
      local.set $17
      local.get $22
      i64.load
      local.set $12
      local.get $12
      local.get $17
      i64.shl
      local.set $15
      local.get $15
      local.get $13
      i64.const -1
      i64.xor
      i64.and
      local.set $14
      local.get $14
      local.get $22
      i64.load offset=8
      local.get $17
      i64.shl
      local.get $12
      i64.const 64
      local.get $17
      i64.sub
      i64.shr_u
      local.get $16
      i64.and
      i64.or
      local.get $13
      i64.and
      i64.or
      local.set $14
      i32.const 0
      local.get $15
      local.get $13
      i64.and
      local.get $14
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $21
      local.get $22
      call $~lib/rt/stub/__release
      local.get $21
      local.tee $22
      local.tee $19
      local.get $8
      local.tee $4
      i32.ne
      if
       local.get $19
       call $~lib/rt/stub/__retain
       drop
       local.get $4
       call $~lib/rt/stub/__release
      end
      local.get $19
      local.set $8
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $11
      local.get $10
      i64.extend_i32_u
      local.set $17
      i32.const 0
      local.get $17
      i64.const 0
      call $~lib/bignum/integer/u128/u128#constructor
      local.tee $19
      call $~lib/rt/stub/__retain
      local.set $20
      i32.const 0
      local.get $11
      i64.load
      local.get $20
      i64.load
      i64.or
      local.get $11
      i64.load offset=8
      local.get $20
      i64.load offset=8
      i64.or
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $4
      local.get $20
      call $~lib/rt/stub/__release
      local.get $11
      call $~lib/rt/stub/__release
      local.get $4
      local.tee $11
      local.tee $21
      local.get $8
      local.tee $20
      i32.ne
      if
       local.get $21
       call $~lib/rt/stub/__retain
       drop
       local.get $20
       call $~lib/rt/stub/__release
      end
      local.get $21
      local.set $8
      local.get $22
      call $~lib/rt/stub/__release
      local.get $19
      call $~lib/rt/stub/__release
      local.get $11
      call $~lib/rt/stub/__release
      local.get $7
      i32.const 1
      i32.add
      local.tee $7
      local.get $2
      i32.lt_s
      br_if $continue|3
     end
    end
    br $break|0
   end
   local.get $1
   i64.extend_i32_s
   local.set $16
   i32.const 0
   local.get $16
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.set $11
   block $break|4
    loop $continue|4
     local.get $0
     local.get $7
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.set $19
     local.get $19
     i32.const 74
     i32.gt_u
     if
      br $break|4
     end
     local.get $9
     local.get $19
     call $~lib/array/Array<u8>#__get
     local.set $22
     local.get $22
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     if
      br $break|4
     end
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $20
     local.get $11
     call $~lib/rt/stub/__retain
     local.set $4
     i32.const 0
     local.get $20
     i64.load
     local.get $20
     i64.load offset=8
     local.get $4
     i64.load
     local.get $4
     i64.load offset=8
     call $~lib/bignum/globals/__multi3
     i32.const 0
     global.get $~lib/bignum/globals/__res128_lo
     global.get $~lib/bignum/globals/__res128_hi
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $10
     local.get $4
     call $~lib/rt/stub/__release
     local.get $20
     call $~lib/rt/stub/__release
     local.get $10
     local.tee $20
     local.tee $21
     local.get $8
     local.tee $4
     i32.ne
     if
      local.get $21
      call $~lib/rt/stub/__retain
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $21
     local.set $8
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $10
     local.get $22
     i64.extend_i32_u
     local.set $13
     i32.const 0
     local.get $13
     i64.const 0
     call $~lib/bignum/integer/u128/u128#constructor
     local.tee $21
     call $~lib/rt/stub/__retain
     local.set $18
     local.get $18
     i64.load
     local.set $13
     local.get $10
     i64.load
     local.get $13
     i64.add
     local.set $16
     local.get $10
     i64.load offset=8
     local.get $18
     i64.load offset=8
     i64.add
     local.get $16
     local.get $13
     i64.lt_u
     i64.extend_i32_u
     i64.add
     local.set $17
     i32.const 0
     local.get $16
     local.get $17
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $4
     local.get $18
     call $~lib/rt/stub/__release
     local.get $10
     call $~lib/rt/stub/__release
     local.get $4
     local.tee $10
     local.tee $4
     local.get $8
     local.tee $18
     i32.ne
     if
      local.get $4
      call $~lib/rt/stub/__retain
      drop
      local.get $18
      call $~lib/rt/stub/__release
     end
     local.get $4
     local.set $8
     local.get $20
     call $~lib/rt/stub/__release
     local.get $21
     call $~lib/rt/stub/__release
     local.get $10
     call $~lib/rt/stub/__release
     local.get $7
     i32.const 1
     i32.add
     local.tee $7
     local.get $2
     i32.lt_s
     br_if $continue|4
    end
   end
   local.get $11
   call $~lib/rt/stub/__release
   br $break|0
  end
  local.get $6
  if (result i32)
   local.get $8
   local.set $18
   local.get $18
   i64.load
   i64.const -1
   i64.xor
   local.set $17
   local.get $18
   i64.load offset=8
   i64.const -1
   i64.xor
   local.set $16
   local.get $17
   i64.const 1
   i64.and
   local.get $17
   i64.const 1
   i64.shr_u
   i64.add
   i64.const 63
   i64.shr_u
   local.set $13
   i32.const 0
   local.get $17
   i64.const 1
   i64.add
   local.get $16
   local.get $13
   i64.add
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $18
   local.tee $11
  else
   local.get $8
   call $~lib/rt/stub/__retain
   local.tee $10
  end
  call $~lib/rt/stub/__retain
  local.set $18
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $18
 )
 (func $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj> (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4200
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2808
   i32.const 414
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3680
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2808
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  call $~lib/bignum/utils/atou128
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $nearFile/isNullable<~lib/array/Array<~lib/typedarray/Uint8Array>> (; 175 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 27
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value> (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3784
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $7
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3680
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2808
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $8
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  local.tee $4
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $6
  local.get $4
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/decodeArray<~lib/typedarray/Uint8Array> (; 179 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj> (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4496
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<~lib/typedarray/Uint8Array>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $nearFile/isNullable<~lib/array/Array<u64>> (; 181 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<u64>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u64>#constructor (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 28
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/decode<u64,nearFile/Value> (; 183 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    i64.extend_i32_u
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $7
   local.get $3
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $8
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $3
  end
  local.get $3
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<u64>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3272
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i64.extend_i32_u
   local.set $6
   local.get $8
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $6
   return
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 19
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3272
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3296
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2808
   i32.const 391
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $10
  i32.const 0
  call $~lib/number/I64.parseInt
  local.set $6
  local.get $7
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $~lib/array/Array<u64>#push (; 184 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $nearFile/decodeArray<u64> (; 185 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u64>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<u64,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<u64>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj> (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4616
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<u64>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $assembly/model/FooBar#_decode (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.const 3088
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3088
   call $nearFile/decode<i32,nearFile/Obj>
  else
   local.get $0
   i32.load
  end
  i32.store
  local.get $0
  local.get $1
  i32.const 3192
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3192
   call $nearFile/decode<u32,nearFile/Obj>
  else
   local.get $0
   i32.load offset=4
  end
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 3240
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3240
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=8
  end
  i64.store offset=8
  local.get $0
  local.get $1
  i32.const 3440
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3440
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=16
  end
  i64.store offset=16
  local.get $0
  local.get $1
  i32.const 3472
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3472
   call $nearFile/decode<i64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=24
  end
  i64.store offset=24
  local.get $0
  local.get $1
  i32.const 3528
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3528
   call $nearFile/decode<bool,nearFile/Obj>
  else
   local.get $0
   i32.load8_u offset=32
  end
  i32.store8 offset=32
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3624
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3624
   call $nearFile/decode<~lib/string/String,nearFile/Obj>
  else
   local.get $0
   i32.load offset=36
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load offset=36
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=36
  local.get $0
  local.tee $3
  local.get $1
  i32.const 3744
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3744
   call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj>
  else
   local.get $0
   i32.load offset=40
   call $~lib/rt/stub/__retain
  end
  local.set $2
  local.get $3
  i32.load offset=40
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=40
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3824
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3824
   call $nearFile/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/Obj>
  else
   local.get $0
   i32.load offset=44
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load offset=44
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=44
  local.get $0
  local.tee $3
  local.get $1
  i32.const 4024
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4024
   call $nearFile/decode<~lib/array/Array<u32>,nearFile/Obj>
  else
   local.get $0
   i32.load offset=48
   call $~lib/rt/stub/__retain
  end
  local.set $2
  local.get $3
  i32.load offset=48
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=48
  local.get $0
  local.tee $2
  local.get $1
  i32.const 4096
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4096
   call $nearFile/decode<~lib/array/Array<i32>,nearFile/Obj>
  else
   local.get $0
   i32.load offset=52
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load offset=52
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=52
  local.get $0
  local.tee $3
  local.get $1
  i32.const 4168
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4168
   call $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj>
  else
   local.get $0
   i32.load offset=56
   call $~lib/rt/stub/__retain
  end
  local.set $2
  local.get $3
  i32.load offset=56
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=56
  local.get $0
  local.tee $2
  local.get $1
  i32.const 4456
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4456
   call $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj>
  else
   local.get $0
   i32.load offset=60
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load offset=60
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=60
  local.get $0
  local.tee $3
  local.get $1
  i32.const 4584
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4584
   call $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj>
  else
   local.get $0
   i32.load offset=64
   call $~lib/rt/stub/__retain
  end
  local.set $2
  local.get $3
  i32.load offset=64
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=64
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/model/FooBar#decode<nearFile/Obj> (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $2
  local.get $1
  local.tee $3
  local.get $2
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.set $2
  local.get $0
  local.get $2
  call $assembly/model/FooBar#_decode
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Value> (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2960
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2960
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $8
  local.tee $10
  local.get $9
  local.tee $11
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $11
   call $~lib/rt/stub/__release
  end
  local.get $10
  local.set $9
  local.get $9
  local.get $3
  call $assembly/model/FooBar#decode<nearFile/Obj>
  local.set $10
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
 )
 (func $~lib/array/Array<assembly/model/FooBar>#push (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/decodeArray<assembly/model/FooBar> (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<assembly/model/FooBar,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<assembly/model/FooBar>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Obj> (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2688
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<assembly/model/FooBar>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $assembly/main/convertFoobars~anonymous|0 (; 193 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 4
  i32.const 23
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass> (; 194 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 2
  i32.const 29
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $5
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.tee $6
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $7
    call $~lib/rt/stub/__retain
    i32.store
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $assembly/main/convertFoobars (; 195 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  call $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $assembly/test/convertFoobars (; 196 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $assembly/main/convertFoobars
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 197 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 32
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $2
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
 )
 (func $~lib/array/Array<i32>#get:length (; 198 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey (; 201 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 202 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 203 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 204 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__unchecked_set
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $~lib/string/String#substring (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $6
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $8
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $8
  i32.sub
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 840
   call $~lib/rt/stub/__retain
   return
  end
  local.get $8
  i32.eqz
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/stub/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/decimalCount32 (; 206 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 207 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 5304
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
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
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 104
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
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
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 209 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 211 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1432
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  i32.const 0
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $3
    call $~lib/string/String#charCodeAt
    local.set $4
    local.get $4
    i32.const 32
    i32.lt_s
    local.tee $5
    if (result i32)
     local.get $5
    else
     local.get $4
     i32.const 1432
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $5
    if (result i32)
     local.get $5
    else
     local.get $4
     i32.const 1656
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     call $~lib/string/String#substring
     local.tee $6
     call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     local.get $3
     i32.const 1
     i32.add
     local.set $2
     local.get $4
     i32.const 1432
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 4656
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      local.get $4
      i32.const 1656
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 4680
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       local.get $4
       i32.const 1728
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 4704
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        local.get $4
        i32.const 1776
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 4728
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         local.get $4
         i32.const 1824
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 4752
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          local.get $4
          i32.const 1872
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 4776
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 0
           i32.eqz
           if
            i32.const 4800
            local.get $4
            call $~lib/number/I32#toString
            local.tee $7
            call $~lib/string/String.__concat
            local.tee $8
            i32.const 5336
            i32.const 108
            i32.const 20
            call $~lib/builtins/abort
            unreachable
           end
           local.get $7
           call $~lib/rt/stub/__release
           local.get $8
           call $~lib/rt/stub/__release
          end
         end
        end
       end
      end
     end
     local.get $6
     call $~lib/rt/stub/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  call $~lib/string/String#substring
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 1432
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 212 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey
  i32.eqz
  if
   local.get $0
   i32.const 1368
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  else
   local.get $0
   i32.load
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#get:length
   i32.const 1
   i32.sub
   i32.const 0
   call $~lib/array/Array<i32>#__set
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
   local.tee $2
   if (result i32)
    local.get $2
   else
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2056
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 213 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 80
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 214 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2232
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#get:length (; 215 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__unchecked_get (; 216 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__get (; 217 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/model/ContainerClass>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 218 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 1112
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/util/number/decimalCount64 (; 219 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 220 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  i32.const 5304
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i64.const 100000000
    i64.div_u
    local.set $4
    local.get $1
    local.get $4
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 10000
    i32.div_u
    local.set $6
    local.get $5
    i32.const 10000
    i32.rem_u
    local.set $7
    local.get $6
    i32.const 100
    i32.div_u
    local.set $8
    local.get $6
    i32.const 100
    i32.rem_u
    local.set $9
    local.get $7
    i32.const 100
    i32.div_u
    local.set $10
    local.get $7
    i32.const 100
    i32.rem_u
    local.set $11
    local.get $3
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $3
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/itoa64 (; 221 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 104
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i64.const 0
  i64.lt_s
  local.set $1
  local.get $1
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
   local.set $3
   local.get $3
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $7
   local.get $3
   local.set $6
   local.get $4
   local.set $5
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_lut
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $6
   local.get $0
   local.set $8
   local.get $4
   local.set $5
   local.get $6
   local.get $8
   local.get $5
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i64> (; 222 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/number/I64#toString (; 223 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i64>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger (; 224 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/number/I64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 225 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $nearFile/encode<i32,~lib/assemblyscript-json/encoder/JSONEncoder> (; 226 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<u32,~lib/assemblyscript-json/encoder/JSONEncoder> (; 227 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/util/number/utoa64 (; 228 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 104
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $2
   local.get $2
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $6
   local.get $2
   local.set $5
   local.get $3
   local.set $4
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_lut
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $5
   local.get $0
   local.set $7
   local.get $3
   local.set $4
   local.get $5
   local.get $7
   local.get $4
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<u64> (; 229 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/number/U64#toString (; 230 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa<u64>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 231 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder> (; 232 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  call $~lib/number/U64#toString
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $3
  call $~lib/rt/stub/__release
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/encode<i64,~lib/assemblyscript-json/encoder/JSONEncoder> (; 233 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  call $~lib/number/I64#toString
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $3
  call $~lib/rt/stub/__release
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean (; 234 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  if (result i32)
   i32.const 24
   call $~lib/rt/stub/__retain
   local.tee $2
  else
   i32.const 48
   call $~lib/rt/stub/__retain
   local.tee $3
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean (; 235 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $nearFile/encode<bool,~lib/assemblyscript-json/encoder/JSONEncoder> (; 236 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder> (; 237 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-runtime-ts/base64/base64.encode (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 3
  i32.rem_s
  i32.sub
  local.set $4
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 0
  i32.eq
  if
   i32.const 840
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $0
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $5
   return
  end
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    local.set $2
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    local.tee $5
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $6
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 6
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $7
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $1
    i32.const 3
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  block $break|1
   block $case1|1
    block $case0|1
     local.get $0
     call $~lib/typedarray/Uint8Array#get:length
     local.get $4
     i32.sub
     local.set $8
     local.get $8
     i32.const 1
     i32.eq
     br_if $case0|1
     local.get $8
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.set $2
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    local.tee $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.ALPHA
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $7
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.PADCHAR
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/base64/base64.PADCHAR
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $8
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    br $break|1
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Uint8Array#__get
   i32.const 16
   i32.shl
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/typedarray/Uint8Array#__get
   i32.const 8
   i32.shl
   i32.or
   local.set $2
   local.get $3
   global.get $~lib/near-runtime-ts/base64/base64.ALPHA
   local.get $2
   i32.const 18
   i32.shr_u
   call $~lib/string/String#charAt
   local.tee $7
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/base64/base64.ALPHA
   local.get $2
   i32.const 12
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   local.tee $8
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/base64/base64.ALPHA
   local.get $2
   i32.const 6
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   local.tee $6
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/base64/base64.PADCHAR
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $7
   call $~lib/rt/stub/__release
   local.get $8
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   br $break|1
  end
  local.get $3
  i32.const 840
  call $~lib/array/Array<~lib/string/String>#join
  local.set $6
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder> (; 239 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   call $~lib/near-runtime-ts/base64/base64.encode
   local.tee $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length (; 240 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 242 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 243 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<i32>#pop (; 245 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2184
   i32.const 1136
   i32.const 285
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 246 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2256
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $nearFile/encode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 247 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/string/String>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 248 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#get:length (; 249 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<u32>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 252 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<u32>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<u32>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<u32,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/encode<~lib/array/Array<i32>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 253 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<i32>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<i32>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<i32,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#constructor (; 254 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 33
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#get:length (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int8Array#__get (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 856
   i32.const 912
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
 (func $~lib/typedarray/Int8Array#__set (; 257 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 856
   i32.const 912
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
 (func $~lib/bignum/utils/processU64 (; 258 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/typedarray/Int8Array#get:length
  i32.const 1
  i32.sub
  local.set $2
  block $break|0
   i32.const 63
   local.set $3
   loop $loop|0
    local.get $3
    i32.const -1
    i32.ne
    i32.eqz
    br_if $break|0
    block $break|1
     i32.const 0
     local.set $4
     loop $loop|1
      local.get $4
      local.get $2
      i32.le_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $4
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
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $loop|1
     end
     unreachable
    end
    block $break|2
     local.get $2
     local.set $4
     loop $loop|2
      local.get $4
      i32.const -1
      i32.ne
      i32.eqz
      br_if $break|2
      local.get $0
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.shl
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $4
      local.get $2
      i32.lt_s
      if
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $4
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
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $loop|2
     end
     unreachable
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
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~lib/bignum/utils/u128toa10 (; 259 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 40
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.set $2
  local.get $2
  local.get $0
  i64.load offset=8
  call $~lib/bignum/utils/processU64
  local.get $2
  local.get $0
  i64.load
  call $~lib/bignum/utils/processU64
  i32.const 840
  call $~lib/rt/stub/__retain
  local.set $3
  i32.const 0
  local.set $4
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const -1
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $4
    i32.eqz
    if (result i32)
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    else
     i32.const 0
    end
    if
     i32.const 1
     local.set $4
    end
    local.get $4
    if
     local.get $3
     global.get $~lib/bignum/utils/HEX_CHARS
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     local.tee $6
     call $~lib/string/String#concat
     local.set $7
     local.get $3
     call $~lib/rt/stub/__release
     local.get $7
     local.set $3
     local.get $6
     call $~lib/rt/stub/__release
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/bignum/integer/u128/u128#toString (; 260 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 16
   i32.eq
  end
  i32.eqz
  if
   i32.const 5456
   i32.const 5552
   i32.const 894
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 104
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 840
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  local.set $2
  i32.const 0
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $4
  local.get $1
  i32.const 16
  i32.eq
  if
   i32.const 124
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   i64.load
   local.set $6
   local.get $2
   i64.load offset=8
   local.set $5
   local.get $5
   local.get $5
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   local.set $7
   local.get $5
   local.get $7
   i64.const -1
   i64.xor
   i64.and
   local.get $6
   local.get $7
   i64.and
   i64.or
   i64.clz
   i32.wrap_i64
   local.get $7
   i32.wrap_i64
   i32.const 64
   i32.and
   i32.add
   local.set $8
   local.get $2
   call $~lib/rt/stub/__release
   local.get $8
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.sub
   local.set $2
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $4
     call $~lib/rt/stub/__retain
     local.set $9
     local.get $2
     local.set $8
     local.get $8
     i32.const 127
     i32.and
     local.set $8
     local.get $8
     i64.extend_i32_s
     local.set $7
     local.get $7
     i64.const 127
     i64.add
     local.get $7
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $6
     local.get $7
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $5
     local.get $7
     i64.const 63
     i64.and
     local.set $7
     local.get $9
     i64.load offset=8
     local.set $10
     local.get $10
     local.get $7
     i64.shr_u
     local.set $11
     local.get $11
     local.get $5
     i64.const -1
     i64.xor
     i64.and
     local.set $12
     local.get $12
     local.get $9
     i64.load
     local.get $7
     i64.shr_u
     local.get $10
     i64.const 64
     local.get $7
     i64.sub
     i64.shl
     local.get $6
     i64.and
     i64.or
     local.get $5
     i64.and
     i64.or
     local.set $12
     i32.const 0
     local.get $12
     local.get $11
     local.get $5
     i64.and
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $13
     local.get $9
     call $~lib/rt/stub/__release
     local.get $13
     local.tee $9
     local.tee $13
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $13
      call $~lib/rt/stub/__retain
      drop
      local.get $8
      call $~lib/rt/stub/__release
     end
     local.get $13
     local.set $4
     local.get $3
     global.get $~lib/bignum/integer/u128/HEX_CHARS
     local.get $4
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     local.tee $13
     call $~lib/string/String#concat
     local.set $8
     local.get $3
     call $~lib/rt/stub/__release
     local.get $8
     local.set $3
     local.get $2
     i32.const 4
     i32.sub
     local.set $2
     local.get $9
     call $~lib/rt/stub/__release
     local.get $13
     call $~lib/rt/stub/__release
     br $continue|0
    end
    unreachable
   end
   local.get $3
   local.set $13
   local.get $4
   call $~lib/rt/stub/__release
   local.get $13
   return
  else
   local.get $1
   i32.const 10
   i32.eq
   if
    local.get $0
    call $~lib/bignum/utils/u128toa10
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    return
   end
  end
  i32.const 5624
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/assemblyscript-json/encoder/JSONEncoder> (; 261 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $4
  i32.const 0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $4
  i64.load offset=8
  local.get $3
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $4
   i64.load
   local.get $3
   i64.load
   i64.eq
  else
   i32.const 0
  end
  local.set $5
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/bignum/integer/u128/u128#toString
   local.tee $4
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $4
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $6
  local.get $2
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length (; 262 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get (; 263 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 264 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 265 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<u64>#get:length (; 266 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 267 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 268 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<u64>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 269 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<u64>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<u64>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $4
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 270 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 1344
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $assembly/model/FooBar#_encode (; 271 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   call $~lib/rt/stub/__retain
  else
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.tee $3
  if (result i32)
   local.get $3
  else
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 3088
  local.get $3
  call $nearFile/encode<i32,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=4
  i32.const 3192
  local.get $3
  call $nearFile/encode<u32,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=8
  i32.const 3240
  local.get $3
  call $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=16
  i32.const 3440
  local.get $3
  call $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=24
  i32.const 3472
  local.get $3
  call $nearFile/encode<i64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load8_u offset=32
  i32.const 3528
  local.get $3
  call $nearFile/encode<bool,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=36
  i32.const 3624
  local.get $3
  call $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=40
  i32.const 3744
  local.get $3
  call $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=44
  i32.const 3824
  local.get $3
  call $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=48
  i32.const 4024
  local.get $3
  call $nearFile/encode<~lib/array/Array<u32>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=52
  i32.const 4096
  local.get $3
  call $nearFile/encode<~lib/array/Array<i32>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=56
  i32.const 4168
  local.get $3
  call $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=60
  i32.const 4456
  local.get $3
  call $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=64
  i32.const 4584
  local.get $3
  call $nearFile/encode<~lib/array/Array<u64>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<assembly/model/FooBar,~lib/assemblyscript-json/encoder/JSONEncoder> (; 272 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/FooBar#_encode
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/model/ContainerClass#_encode (; 273 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   call $~lib/rt/stub/__retain
  else
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.tee $3
  if (result i32)
   local.get $3
  else
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 5424
  local.get $3
  call $nearFile/encode<assembly/model/FooBar,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<assembly/model/ContainerClass,~lib/assemblyscript-json/encoder/JSONEncoder> (; 274 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/ContainerClass#_encode
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $3
  local.get $2
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 275 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 840
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/string/String.UTF8.byteLength (; 276 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $5
      i32.eqz
     else
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else
     local.get $5
     i32.const 2048
     i32.lt_u
     if
      local.get $4
      i32.const 2
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $4
      i32.const 3
      i32.add
      local.set $4
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/string/String.UTF8.encode (; 277 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $4
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $6
    local.get $6
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $6
      i32.eqz
     else
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $5
     local.get $6
     i32.store8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else
     local.get $6
     i32.const 2048
     i32.lt_u
     if
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      i32.const 2
      i32.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $7
       local.get $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.set $6
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        local.get $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $5
        i32.const 4
        i32.add
        local.set $5
        br $continue|0
       end
      end
      local.get $5
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $5
      i32.const 3
      i32.add
      local.set $5
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $1
  if
   local.get $2
   local.get $3
   i32.le_u
   i32.eqz
   if
    i32.const 0
    i32.const 1608
    i32.const 567
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/stub/__realloc
   local.set $4
   local.get $5
   i32.const 0
   i32.store8
  else
   local.get $2
   local.get $3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 1608
    i32.const 571
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 278 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $1
  call $~lib/assemblyscript-json/util/index/Buffer.getPtr
  local.get $3
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/memory/memory.copy
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 279 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  local.tee $1
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array> (; 280 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<assembly/model/ContainerClass>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<assembly/model/ContainerClass>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<assembly/model/ContainerClass,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
  return
 )
 (func $assembly/test/__wrapper_convertFoobars (; 281 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $nearFile/getInput
  local.set $0
  i64.const 0
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $0
  call $nearFile/JSON.parse
  local.set $1
  local.get $1
  i32.const 2488
  call $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Obj>
  local.tee $2
  call $assembly/test/convertFoobars
  local.set $3
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $4
  i32.const 0
  local.set $5
  local.get $3
  i32.const 0
  local.get $4
  call $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $5
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Obj> (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3952
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<~lib/string/String>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $~lib/near-runtime-ts/util/util.toUTF8 (; 283 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-runtime-ts/util/util.stringToBytes (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  i32.sub
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  local.get $2
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/near-runtime-ts/util/util.toUTF8
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-runtime-ts/logging/logging.log (; 285 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/near-runtime-ts/util/util.stringToBytes
  local.set $1
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-runtime-ts/runtime_api/runtime_api.log_utf8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/getStringArrayLength (; 286 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/array/Array<~lib/string/String>#get:length
  local.set $1
  i32.const 5664
  local.get $1
  call $~lib/number/I32#toString
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  call $~lib/array/Array<~lib/string/String>#get:length
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/test/getStringArrayLength (; 287 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $assembly/main/getStringArrayLength
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $nearFile/encode<i32,~lib/typedarray/Uint8Array> (; 288 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $assembly/test/__wrapper_getStringArrayLength (; 289 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $nearFile/getInput
  local.set $0
  i64.const 0
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $0
  call $nearFile/JSON.parse
  local.set $1
  local.get $1
  i32.const 3824
  call $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Obj>
  local.tee $2
  call $assembly/test/getStringArrayLength
  local.set $3
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $4
  i32.const 0
  local.set $5
  local.get $3
  i32.const 0
  local.get $4
  call $nearFile/encode<i32,~lib/typedarray/Uint8Array>
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $5
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $nearFile/isNullable<assembly/model/ContainerClass> (; 290 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<assembly/model/ContainerClass>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $assembly/model/ContainerClass#constructor (; 291 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 23
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Obj> (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2960
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2960
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $8
  local.tee $10
  local.get $9
  local.tee $11
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $11
   call $~lib/rt/stub/__release
  end
  local.get $10
  local.set $9
  local.get $9
  local.get $3
  call $assembly/model/FooBar#decode<nearFile/Obj>
  local.set $10
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
 )
 (func $assembly/model/ContainerClass#_decode (; 293 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 5424
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5424
   call $nearFile/decode<assembly/model/FooBar,nearFile/Obj>
  else
   local.get $0
   i32.load
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/stub/__release
  local.get $3
  i32.store
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/model/ContainerClass#decode<nearFile/Obj> (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $2
  local.get $1
  local.tee $3
  local.get $2
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.set $2
  local.get $0
  local.get $2
  call $assembly/model/ContainerClass#_decode
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/decode<assembly/model/ContainerClass,nearFile/Obj> (; 295 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/ContainerClass>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5768
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 5768
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/ContainerClass#constructor
  local.tee $8
  local.tee $10
  local.get $9
  local.tee $11
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $11
   call $~lib/rt/stub/__release
  end
  local.get $10
  local.set $9
  local.get $9
  local.get $3
  call $assembly/model/ContainerClass#decode<nearFile/Obj>
  local.set $10
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
 )
 (func $assembly/model/AnotherContainerClass#constructor (; 296 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 34
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $assembly/main/rewrapFoobar (; 297 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $assembly/model/AnotherContainerClass#constructor
  local.set $1
  local.get $1
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 35
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 30
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  local.get $5
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  call $~lib/rt/stub/__retain
  i32.store
  local.get $2
  local.tee $4
  local.get $3
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store
  local.get $1
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/test/rewrapFoobar (; 298 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $assembly/main/rewrapFoobar
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#get:length (; 299 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__unchecked_get (; 300 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get (; 301 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<assembly/model/FooBar>#get:length (; 302 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__unchecked_get (; 303 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__get (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 856
   i32.const 1136
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/model/FooBar>#__unchecked_get
  local.set $2
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 1232
   i32.const 1136
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 305 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<assembly/model/FooBar>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<assembly/model/FooBar>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<assembly/model/FooBar,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 306 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#get:length
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
     local.tee $4
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/encoder/JSONEncoder>
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  end
  i32.const 0
  local.set $5
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/model/AnotherContainerClass#_encode (; 307 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   call $~lib/rt/stub/__retain
  else
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.tee $3
  if (result i32)
   local.get $3
  else
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 2488
  local.get $3
  call $nearFile/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array> (; 308 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/AnotherContainerClass#_encode
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $assembly/test/__wrapper_rewrapFoobar (; 309 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $nearFile/getInput
  local.set $0
  i64.const 0
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $0
  call $nearFile/JSON.parse
  local.set $1
  local.get $1
  i32.const 5728
  call $nearFile/decode<assembly/model/ContainerClass,nearFile/Obj>
  local.tee $2
  call $assembly/test/rewrapFoobar
  local.set $3
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $4
  i32.const 0
  local.set $5
  local.get $3
  i32.const 0
  local.get $4
  call $nearFile/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array>
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $5
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $nearFile/isNullable<assembly/model/AnotherContainerClass> (; 310 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<assembly/model/AnotherContainerClass>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $nearFile/isNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>> (; 311 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor (; 312 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 35
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value> (; 313 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2688
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<assembly/model/FooBar>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push (; 314 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
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
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/decodeArray<~lib/array/Array<assembly/model/FooBar>> (; 315 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 17
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2888
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2808
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $5
    call $~lib/array/Array<nearFile/Value>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    call $~lib/array/Array<nearFile/Value>#__get
    local.tee $7
    i32.const 840
    call $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push
    drop
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $6
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/Obj> (; 316 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5880
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.get $1
  call $nearFile/decodeArray<~lib/array/Array<assembly/model/FooBar>>
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $6
  return
 )
 (func $assembly/model/AnotherContainerClass#_decode (; 317 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 2488
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2488
   call $nearFile/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/Obj>
  else
   local.get $0
   i32.load
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/stub/__release
  local.get $3
  i32.store
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/model/AnotherContainerClass#decode<nearFile/Obj> (; 318 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $2
  local.get $1
  local.tee $3
  local.get $2
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.set $2
  local.get $0
  local.get $2
  call $assembly/model/AnotherContainerClass#_decode
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/decode<assembly/model/AnotherContainerClass,nearFile/Obj> (; 319 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $4
   local.get $1
   call $nearFile/Obj#get
   local.set $5
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $6
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    return
   end
   local.get $5
   local.tee $6
   local.get $3
   local.tee $7
   i32.ne
   if
    local.get $6
    call $~lib/rt/stub/__retain
    drop
    local.get $7
    call $~lib/rt/stub/__release
   end
   local.get $6
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
  else
   local.get $2
   local.tee $7
   local.get $3
   local.tee $5
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $3
  end
  local.get $3
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/AnotherContainerClass>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5816
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $8
   local.get $7
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $8
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  local.tee $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 5816
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/AnotherContainerClass#constructor
  local.tee $8
  local.tee $10
  local.get $9
  local.tee $11
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $11
   call $~lib/rt/stub/__release
  end
  local.get $10
  local.set $9
  local.get $9
  local.get $3
  call $assembly/model/AnotherContainerClass#decode<nearFile/Obj>
  local.set $10
  local.get $2
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
 )
 (func $assembly/main/unwrapFoobar (; 320 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
  local.tee $1
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#__get
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/test/unwrapFoobar (; 321 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $assembly/main/unwrapFoobar
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 322 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $0
   local.get $1
   local.get $2
   call $assembly/model/FooBar#_encode
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $assembly/test/__wrapper_unwrapFoobar (; 323 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $nearFile/getInput
  local.set $0
  i64.const 0
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $0
  call $nearFile/JSON.parse
  local.set $1
  local.get $1
  i32.const 5728
  call $nearFile/decode<assembly/model/AnotherContainerClass,nearFile/Obj>
  local.tee $2
  call $assembly/test/unwrapFoobar
  local.set $3
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $4
  i32.const 0
  local.set $5
  local.get $3
  i32.const 0
  local.get $4
  call $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  local.set $5
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $assembly/main/stringOrNull (; 324 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/rt/stub/__retain
 )
 (func $assembly/test/stringOrNull (; 325 ;) (type $FUNCSIG$i) (result i32)
  call $assembly/main/stringOrNull
 )
 (func $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array> (; 326 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else
   local.get $2
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $assembly/test/__wrapper_stringOrNull (; 327 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $assembly/test/stringOrNull
  local.set $0
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $1
  i32.const 0
  local.set $2
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  if
   local.get $1
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  else
   local.get $0
   local.tee $3
   if (result i32)
    local.get $3
   else
    unreachable
   end
   i32.const 0
   local.get $1
   call $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $assembly/test/stringAliasTest (; 328 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 6016
  call $~lib/string/String.__concat
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/test/__wrapper_stringAliasTest (; 329 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $nearFile/getInput
  local.set $0
  i64.const 0
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $0
  call $nearFile/JSON.parse
  local.set $1
  local.get $1
  i32.const 5992
  call $nearFile/decode<~lib/string/String,nearFile/Obj>
  local.tee $2
  call $assembly/test/stringAliasTest
  local.set $3
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $4
  i32.const 0
  local.set $5
  local.get $3
  i32.const 0
  call $~lib/string/String.__eq
  if
   local.get $4
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
   local.get $4
   call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
   local.set $6
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   local.set $5
  else
   local.get $3
   i32.const 0
   local.get $4
   call $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>
   local.set $6
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   local.set $5
  end
  local.get $5
  i32.load offset=8
  i64.extend_i32_s
  local.get $5
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#set:length (; 330 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $4
   local.get $3
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $5
   loop $continue|0
    local.get $4
    i32.load
    call $~lib/rt/stub/__release
    local.get $4
    i32.const 4
    i32.add
    local.tee $4
    local.get $5
    i32.lt_u
    br_if $continue|0
   end
  else
   local.get $0
   local.get $1
   i32.const 2
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array.create<~lib/typedarray/Uint8Array> (; 331 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#set:length
  local.get $1
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_set (; 332 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/stub/__retain
   i32.store
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 333 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_set
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $assembly/model/FooBar#toJSON (; 334 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 840
  i32.const 0
  call $assembly/model/FooBar#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/model/FooBar#encode (; 335 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 840
  i32.const 0
  call $assembly/model/FooBar#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 336 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $nearFile/JSON.parse
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  local.tee $5
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $5
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $3
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $5
   local.get $1
   call $nearFile/Obj#get
   local.set $6
   local.get $6
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    return
   end
   local.get $6
   local.tee $7
   local.get $4
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
  else
   local.get $3
   local.tee $8
   local.get $4
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    drop
    local.get $6
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $4
  end
  local.get $4
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2960
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $8
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $9
   return
  end
  i32.const 0
  local.set $10
  local.get $4
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2960
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $9
  local.tee $11
  local.get $10
  local.tee $12
  i32.ne
  if
   local.get $11
   call $~lib/rt/stub/__retain
   drop
   local.get $12
   call $~lib/rt/stub/__release
  end
  local.get $11
  local.set $10
  local.get $10
  local.get $4
  call $assembly/model/FooBar#decode<nearFile/Obj>
  local.set $11
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $assembly/model/Nullables#constructor (; 337 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 36
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
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
 (func $assembly/model/Nullables#_encode (; 338 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   call $~lib/rt/stub/__retain
  else
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.tee $3
  if (result i32)
   local.get $3
  else
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 5992
  local.get $3
  call $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=4
  i32.const 4200
  local.get $3
  call $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=8
  i32.const 6432
  local.get $3
  call $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/model/Nullables#encode (; 339 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 840
  i32.const 0
  call $assembly/model/Nullables#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/isNullable<assembly/model/Nullables> (; 340 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   call $nearFile/isNullable<assembly/model/Nullables>
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
 )
 (func $assembly/model/Nullables#_decode (; 341 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 5992
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5992
   call $nearFile/decode<~lib/string/String,nearFile/Obj>
  else
   local.get $0
   i32.load
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/stub/__release
  local.get $3
  i32.store
  local.get $0
  local.tee $3
  local.get $1
  i32.const 4200
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4200
   call $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj>
  else
   local.get $0
   i32.load offset=4
   call $~lib/rt/stub/__retain
  end
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6432
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 6432
   call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj>
  else
   local.get $0
   i32.load offset=8
   call $~lib/rt/stub/__retain
  end
  local.set $3
  local.get $2
  i32.load offset=8
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=8
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/model/Nullables#decode<nearFile/Obj> (; 342 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $2
  local.get $1
  local.tee $3
  local.get $2
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.set $2
  local.get $0
  local.get $2
  call $assembly/model/Nullables#_decode
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array> (; 343 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $nearFile/JSON.parse
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  local.tee $5
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $5
   i32.const 14
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $1
   i32.const 840
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $3
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $5
   local.get $1
   call $nearFile/Obj#get
   local.set $6
   local.get $6
   i32.const 0
   i32.eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $0
    call $~lib/rt/stub/__release
    local.get $1
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    return
   end
   local.get $6
   local.tee $7
   local.get $4
   local.tee $8
   i32.ne
   if
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    local.get $8
    call $~lib/rt/stub/__release
   end
   local.get $7
   local.set $4
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
  else
   local.get $3
   local.tee $8
   local.get $4
   local.tee $6
   i32.ne
   if
    local.get $8
    call $~lib/rt/stub/__retain
    drop
    local.get $6
    call $~lib/rt/stub/__release
   end
   local.get $8
   local.set $4
  end
  local.get $4
  local.tee $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   i32.const 22
   call $~lib/rt/__instanceof
  end
  if
   call $nearFile/isNullable<assembly/model/Nullables>
   i32.eqz
   if
    i32.const 2616
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2648
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 6472
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2760
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2808
    i32.const 374
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $9
   local.get $8
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $7
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $4
   call $~lib/rt/stub/__release
   local.get $9
   return
  end
  i32.const 0
  local.set $10
  local.get $4
  local.tee $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   i32.const 14
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 2840
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2648
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 6472
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2992
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2808
   i32.const 418
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/Nullables#constructor
  local.tee $9
  local.tee $11
  local.get $10
  local.tee $12
  i32.ne
  if
   local.get $11
   call $~lib/rt/stub/__retain
   drop
   local.get $12
   call $~lib/rt/stub/__release
  end
  local.get $11
  local.set $10
  local.get $10
  local.get $4
  call $assembly/model/Nullables#decode<nearFile/Obj>
  local.set $11
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $assembly/test/runTest (; 344 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  i32.const 6048
  call $~lib/near-runtime-ts/logging/logging.log
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  local.get $0
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 26
  i32.const 6096
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $2
  local.tee $3
  local.get $1
  i32.load offset=48
  local.tee $1
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $3
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
  local.tee $3
  i32.const 3088
  local.tee $1
  local.get $3
  i32.load offset=36
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=36
  local.get $0
  local.tee $1
  i32.const 6120
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $3
  local.get $1
  i32.load offset=40
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=40
  local.get $0
  local.tee $3
  i32.const 0
  i64.const 128
  i64.const 0
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $1
  local.get $3
  i32.load offset=56
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=56
  local.get $0
  local.tee $3
  i32.const 2
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 16
  i32.const 6208
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $5
  call $~lib/rt/stub/__retain
  i32.store
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 16
  i32.const 6264
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $6
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $1
  local.tee $4
  local.get $3
  i32.load offset=44
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store offset=44
  local.get $0
  local.tee $4
  i32.const 2
  call $~lib/array/Array.create<~lib/typedarray/Uint8Array>
  local.set $1
  local.get $4
  i32.load offset=60
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=60
  local.get $0
  i32.load offset=60
  i32.const 0
  i32.const 6120
  call $~lib/near-runtime-ts/base64/base64.decode
  local.tee $1
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=60
  i32.const 1
  i32.const 6120
  call $~lib/near-runtime-ts/base64/base64.decode
  local.tee $4
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  local.tee $3
  i32.const 2
  i32.const 3
  i32.const 28
  i32.const 6288
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $7
  local.tee $8
  local.get $3
  i32.load offset=64
  local.tee $3
  i32.ne
  if
   local.get $8
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $8
  i32.store offset=64
  i32.const 6320
  local.get $0
  call $assembly/model/FooBar#toJSON
  local.tee $8
  call $~lib/string/String.__concat
  local.tee $3
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  call $assembly/model/FooBar#encode
  local.set $9
  local.get $9
  i32.const 840
  call $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.set $10
  i32.const 6352
  local.get $10
  call $assembly/model/FooBar#toJSON
  local.tee $11
  call $~lib/string/String.__concat
  local.tee $12
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  i32.load
  local.get $10
  i32.load
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 158
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $10
  i32.load offset=4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 159
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=40
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $13
  local.get $10
  i32.load offset=40
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $14
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 160
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  local.tee $15
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $16
  local.get $10
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  local.tee $17
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $18
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
  local.tee $19
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#__get
  local.tee $20
  i32.const 6176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 162
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=64
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.get $10
  i32.load offset=64
  i32.const 0
  call $~lib/array/Array<u64>#__get
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 163
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load offset=16
  local.get $10
  i64.load offset=16
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 164
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/Nullables#constructor
  local.set $21
  local.get $21
  call $assembly/model/Nullables#encode
  local.tee $22
  i32.const 840
  call $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array>
  local.set $23
  local.get $23
  i32.load
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $23
  i32.load offset=4
  call $~lib/rt/stub/__retain
  local.set $25
  i32.const 0
  call $~lib/rt/stub/__retain
  local.set $24
  local.get $25
  i64.load offset=8
  local.get $24
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $25
   i64.load
   local.get $24
   i64.load
   i64.eq
  else
   i32.const 0
  end
  local.set $26
  local.get $24
  call $~lib/rt/stub/__release
  local.get $25
  call $~lib/rt/stub/__release
  local.get $26
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $23
  i32.load offset=8
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 6384
   i32.const 169
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6512
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $15
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  local.get $22
  call $~lib/rt/stub/__release
  local.get $23
  call $~lib/rt/stub/__release
 )
 (func $start (; 345 ;) (type $FUNCSIG$v)
  call $start:~lib/rt/index-stub
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $start:assembly/test
  call $start:nearFile
 )
 (func $null (; 346 ;) (type $FUNCSIG$v)
 )
)
