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
 (data (i32.const 536) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 584) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 640) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 656) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 712) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 768) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 824) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 912) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 936) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 984) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 1032) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1144) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 1168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1192) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 1232) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1256) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 1336) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 1408) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1456) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1480) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 1504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1528) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1552) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 1576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1600) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 1624) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1648) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 1672) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1696) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 1720) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 1776) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 1856) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 1880) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 1920) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 1984) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2056) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 2080) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 2144) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 2184) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 2208) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 2232) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 2288) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 2320) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 2376) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 2416) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 2448) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 2488) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00")
 (data (i32.const 2560) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 2608) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00n\00e\00a\00r\00F\00i\00l\00e\00")
 (data (i32.const 2640) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 2688) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 2760) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00F\00o\00o\00B\00a\00r\00")
 (data (i32.const 2792) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 2864) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 2888) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 2912) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 2936) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r\00")
 (data (i32.const 2992) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 3016) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 3040) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 3072) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 3096) "~\00\00\00\01\00\00\00\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3240) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00u\006\004\00_\00z\00e\00r\00o\00")
 (data (i32.const 3272) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 3304) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 3328) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 3352) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 3376) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3424) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 3448) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 3480) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 3544) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 3584) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 3624) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 3648) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00>\00")
 (data (i32.const 3752) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00")
 (data (i32.const 3824) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 3856) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\003\002\00>\00")
 (data (i32.const 3896) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 3928) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00i\003\002\00>\00")
 (data (i32.const 3968) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 4008) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00/\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00>\00")
 (data (i32.const 4096) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00A\00r\00r\00")
 (data (i32.const 4128) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\006\004\00>\00")
 (data (i32.const 4168) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 4192) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 4216) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 4240) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 4264) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 4288) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 4312) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 4400) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 4816) "\10\00\00\00\01\00\00\00\1a\00\00\00\10\00\00\00@\11\00\00@\11\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 4848) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 4936) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 4968) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 5032) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 5072) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 5120) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00A\00n\00o\00t\00h\00e\00r\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 5184) "\\\00\00\00\01\00\00\00\01\00\00\00\\\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00>\00")
 (data (i32.const 5296) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00t\00r\00")
 (data (i32.const 5320) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00 \00W\00o\00r\00l\00d\00")
 (data (i32.const 5352) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00 \00t\00e\00s\00t\00")
 (data (i32.const 5400) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00*\00\00\00\0b\00\00\00")
 (data (i32.const 5424) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 5480) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 5512) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00x\15\00\00")
 (data (i32.const 5536) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00W\00o\00r\00l\00d\00")
 (data (i32.const 5568) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\b0\15\00\00")
 (data (i32.const 5592) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00")
 (data (i32.const 5624) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00B\00e\00f\00o\00r\00e\00:\00 \00")
 (data (i32.const 5656) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00A\00f\00t\00e\00r\00:\00 \00 \00")
 (data (i32.const 5688) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 5736) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 5776) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00N\00u\00l\00l\00a\00b\00l\00e\00s\00")
 (data (i32.const 5816) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00T\00e\00s\00t\00 \00P\00a\00s\00s\00e\00d\00")
 (data (i32.const 5856) "#\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\n\00\00\00\98 A\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\n\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\n\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93 \00\00\02\00\00\00\13\01\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00")
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
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $nearFile/JSON.handler (mut i32) (i32.const 0))
 (global $nearFile/JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 5856))
 (global $~lib/heap/__heap_base i32 (i32.const 6140))
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
   i32.const 552
   i32.const 600
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
  i32.const 656
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
   i32.const 672
   i32.const 728
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
   i32.const 784
   i32.const 840
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
   i32.const 552
   i32.const 600
   i32.const 53
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
   i32.const 1000
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
   i32.const 1000
   i32.const 46
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $0
   local.get $3
   i32.add
   global.get $~lib/rt/stub/offset
   i32.eq
   if
    local.get $1
    i32.const 1073741808
    i32.gt_u
    if
     unreachable
    end
    local.get $1
    i32.const 15
    i32.add
    i32.const 15
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $0
    local.get $3
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $2
    local.get $3
    i32.store
   else
    local.get $1
    i32.const 15
    i32.add
    i32.const 15
    i32.const -1
    i32.xor
    i32.and
    local.tee $4
    local.get $3
    i32.const 1
    i32.shl
    local.tee $5
    local.get $4
    local.get $5
    i32.gt_u
    select
    local.set $3
    local.get $3
    local.get $2
    i32.load offset=8
    call $~lib/rt/stub/__alloc
    local.set $4
    local.get $4
    local.get $0
    local.get $2
    i32.load offset=12
    call $~lib/memory/memory.copy
    local.get $4
    local.tee $0
    i32.const 16
    i32.sub
    local.set $2
   end
  else
   local.get $0
   local.get $3
   i32.add
   global.get $~lib/rt/stub/offset
   i32.eq
   if
    local.get $1
    i32.const 15
    i32.add
    i32.const 15
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    local.get $0
    local.get $3
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $2
    local.get $3
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
    i32.const 552
    i32.const 952
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
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
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
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
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
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
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
   i32.const 1424
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
  (local $12 i32)
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
   i32.const 656
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
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $2
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $2
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $4
   local.get $3
   i32.const 1
   i32.add
   local.set $8
   loop $loop|0
    local.get $4
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $9
    local.get $7
    local.tee $10
    i32.ne
    if
     local.get $9
     call $~lib/rt/stub/__retain
     drop
     local.get $10
     call $~lib/rt/stub/__release
    end
    local.get $9
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $6
     local.get $7
     call $~lib/string/String#get:length
     i32.add
     local.set $6
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
  local.set $11
  local.get $6
  local.get $5
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $12
  block $break|1
   i32.const 0
   local.set $8
   loop $loop|1
    local.get $8
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $7
    local.tee $4
    i32.ne
    if
     local.get $10
     call $~lib/rt/stub/__retain
     drop
     local.get $4
     call $~lib/rt/stub/__release
    end
    local.get $10
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $10
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $10
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $10
     i32.add
     local.set $11
    end
    local.get $5
    if
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $5
     i32.add
     local.set $11
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
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
  local.tee $9
  local.get $7
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/stub/__retain
   drop
   local.get $8
   call $~lib/rt/stub/__release
  end
  local.get $9
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $12
   local.get $11
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   local.get $7
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $12
  local.set $9
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $9
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
   i32.const 1736
   i32.const 840
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
   i32.const 1424
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
   i32.const 656
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
  i32.const 1248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1248
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1472
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1472
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1496
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1496
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1520
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1544
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1568
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1592
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1616
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1640
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1664
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1688
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1712
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
   i32.const 1792
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 840
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 656
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
  i32.const 1248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 1272
   i32.const 840
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
    i32.const 1352
    i32.const 840
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1248
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
    i32.const 656
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
    i32.const 1472
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
  i32.const 1872
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 1896
   i32.const 840
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
   i32.const 2000
   i32.const 952
   i32.const 270
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
  i32.const 928
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
  i32.const 656
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
     i32.const 1160
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
      i32.const 1184
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1208
       i32.const 840
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
   i32.const 1160
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 1936
    i32.const 840
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
  i32.const 2048
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
  i32.const 656
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
     i32.const 2072
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
      i32.const 1184
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 1208
       i32.const 840
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
   i32.const 2072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 2096
    i32.const 840
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
  i32.const 1248
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
     i32.const 2160
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 2200
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 840
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
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
  i32.const 2224
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
   i32.const 2248
   i32.const 840
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
   i32.const 2336
   i32.const 2392
   i32.const 103
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
   i32.const 64
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
  i32.const 2880
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2928
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2928
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2952
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3032
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3032
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2952
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3088
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3088
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3112
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3320
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3320
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3112
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3368
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3368
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3392
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3464
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3496
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2624
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
   i32.const 656
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
   i32.const 672
   i32.const 728
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3600
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3496
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3464
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3496
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<~lib/string/String,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3768
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3664
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3032
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3032
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2952
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<u32,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<u32>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3872
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2928
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2928
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2952
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<i32,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<i32>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3944
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $nearFile/isNullable<~lib/array/Array<~lib/typedarray/Uint8Array>> (; 168 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 169 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value> (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3600
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $8
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 3496
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2624
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<~lib/typedarray/Uint8Array> (; 172 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
 )
 (func $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj> (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4024
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $nearFile/isNullable<~lib/array/Array<u64>> (; 174 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<u64>#constructor (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<u64,nearFile/Value> (; 176 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3088
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 3088
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3112
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2624
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
 (func $~lib/array/Array<u64>#push (; 177 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $nearFile/decodeArray<u64> (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<u64,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<u64>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $7
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
  local.get $7
 )
 (func $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj> (; 179 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 4144
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $assembly/model/FooBar#_decode (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.const 2904
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2904
   call $nearFile/decode<i32,nearFile/Obj>
  else
   local.get $0
   i32.load
  end
  i32.store
  local.get $0
  local.get $1
  i32.const 3008
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3008
   call $nearFile/decode<u32,nearFile/Obj>
  else
   local.get $0
   i32.load offset=4
  end
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 3056
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3056
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=8
  end
  i64.store offset=8
  local.get $0
  local.get $1
  i32.const 3256
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3256
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=16
  end
  i64.store offset=16
  local.get $0
  local.get $1
  i32.const 3288
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 3288
   call $nearFile/decode<i64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=24
  end
  i64.store offset=24
  local.get $0
  local.get $1
  i32.const 3344
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3344
   call $nearFile/decode<bool,nearFile/Obj>
  else
   local.get $0
   i32.load8_u offset=32
  end
  i32.store8 offset=32
  local.get $0
  local.tee $2
  local.get $1
  i32.const 3440
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3440
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
  i32.const 3560
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3560
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
  i32.const 3640
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3640
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
  i32.const 3840
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3840
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
  i32.const 3912
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3912
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
  i32.const 3984
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3984
   call $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj>
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
  i32.const 4112
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4112
   call $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj>
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
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $assembly/model/FooBar#decode<nearFile/Obj> (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Value> (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2776
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2776
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
 (func $~lib/array/Array<assembly/model/FooBar>#push (; 183 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<assembly/model/FooBar> (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<assembly/model/FooBar,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<assembly/model/FooBar>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
 )
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Obj> (; 185 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2504
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $assembly/main/convertFoobars~anonymous|0 (; 186 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass> (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $assembly/main/convertFoobars (; 188 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/test/convertFoobars (; 189 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 190 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 31
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
 (func $~lib/array/Array<i32>#get:length (; 191 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey (; 194 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 195 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#__unchecked_set (; 196 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 197 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#substring (; 198 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 656
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
 (func $~lib/util/number/decimalCount32 (; 199 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 200 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 4832
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
 (func $~lib/util/number/itoa32 (; 201 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/itoa<i32> (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 203 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 204 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  i32.const 1248
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
     i32.const 1248
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $5
    if (result i32)
     local.get $5
    else
     local.get $4
     i32.const 1472
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
     i32.const 1248
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 4184
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      local.get $4
      i32.const 1472
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 4208
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       local.get $4
       i32.const 1544
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 4232
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        local.get $4
        i32.const 1592
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 4256
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         local.get $4
         i32.const 1640
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 4280
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          local.get $4
          i32.const 1688
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 4304
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 0
           i32.eqz
           if
            i32.const 4328
            local.get $4
            call $~lib/number/I32#toString
            local.tee $7
            call $~lib/string/String.__concat
            local.tee $8
            i32.const 4864
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
  local.tee $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 1248
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $5
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 205 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1184
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
   i32.const 1872
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 206 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 207 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2048
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
 (func $~lib/array/Array<assembly/model/ContainerClass>#get:length (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__unchecked_get (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__get (; 210 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 928
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
 (func $~lib/util/number/decimalCount64 (; 212 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 213 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 4832
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
 (func $~lib/util/number/itoa64 (; 214 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  i64.eqz
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
 (func $~lib/util/number/itoa<i64> (; 215 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/number/I64#toString (; 216 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i64>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger (; 217 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/number/I64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 218 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $nearFile/encode<i32,~lib/assemblyscript-json/encoder/JSONEncoder> (; 219 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $nearFile/encode<u32,~lib/assemblyscript-json/encoder/JSONEncoder> (; 220 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/number/utoa64 (; 221 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i64.eqz
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
 (func $~lib/util/number/itoa<u64> (; 222 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/number/U64#toString (; 223 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa<u64>
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 224 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder> (; 225 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $nearFile/encode<i64,~lib/assemblyscript-json/encoder/JSONEncoder> (; 226 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean (; 227 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean (; 228 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $nearFile/encode<bool,~lib/assemblyscript-json/encoder/JSONEncoder> (; 229 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder> (; 230 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/near-runtime-ts/base64/base64.encode (; 231 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 656
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
    local.get $1
    i32.const 3
    i32.add
    local.set $1
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
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
  i32.const 656
  call $~lib/array/Array<~lib/string/String>#join
  local.set $6
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder> (; 232 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length (; 233 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get (; 234 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 235 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 236 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 237 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<i32>#pop (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2000
   i32.const 952
   i32.const 270
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 239 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2072
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $nearFile/encode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 240 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 241 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<u32>#get:length (; 242 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 243 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
 (func $nearFile/encode<~lib/array/Array<u32>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 245 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $nearFile/encode<~lib/array/Array<i32>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 246 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length (; 247 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 250 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<u64>#get:length (; 251 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 252 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 253 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
 (func $nearFile/encode<~lib/array/Array<u64>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 254 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 255 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 1160
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $assembly/model/FooBar#_encode (; 256 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 2904
  local.get $3
  call $nearFile/encode<i32,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=4
  i32.const 3008
  local.get $3
  call $nearFile/encode<u32,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=8
  i32.const 3056
  local.get $3
  call $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=16
  i32.const 3256
  local.get $3
  call $nearFile/encode<u64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i64.load offset=24
  i32.const 3288
  local.get $3
  call $nearFile/encode<i64,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load8_u offset=32
  i32.const 3344
  local.get $3
  call $nearFile/encode<bool,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=36
  i32.const 3440
  local.get $3
  call $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=40
  i32.const 3560
  local.get $3
  call $nearFile/encode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=44
  i32.const 3640
  local.get $3
  call $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=48
  i32.const 3840
  local.get $3
  call $nearFile/encode<~lib/array/Array<u32>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=52
  i32.const 3912
  local.get $3
  call $nearFile/encode<~lib/array/Array<i32>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=56
  i32.const 3984
  local.get $3
  call $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=60
  i32.const 4112
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
 (func $nearFile/encode<assembly/model/FooBar,~lib/assemblyscript-json/encoder/JSONEncoder> (; 257 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/model/ContainerClass#_encode (; 258 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 4952
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
 (func $nearFile/encode<assembly/model/ContainerClass,~lib/assemblyscript-json/encoder/JSONEncoder> (; 259 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 656
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/string/String.UTF8.byteLength (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.UTF8.encode (; 262 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1424
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
    i32.const 1424
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
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 264 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array> (; 265 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
  return
 )
 (func $assembly/test/__wrapper_convertFoobars (; 266 ;) (type $FUNCSIG$v)
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
  i32.const 2304
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
 (func $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Obj> (; 267 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 3768
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $~lib/near-runtime-ts/util/util.toUTF8 (; 268 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/near-runtime-ts/util/util.stringToBytes (; 269 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/near-runtime-ts/logging/logging.log (; 270 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $assembly/main/getStringArrayLength (; 271 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 4984
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
 (func $assembly/test/getStringArrayLength (; 272 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $nearFile/encode<i32,~lib/typedarray/Uint8Array> (; 273 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/test/__wrapper_getStringArrayLength (; 274 ;) (type $FUNCSIG$v)
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
  i32.const 3640
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
 (func $nearFile/isNullable<assembly/model/ContainerClass> (; 275 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/model/ContainerClass#constructor (; 276 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Obj> (; 277 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2776
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 2776
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
 (func $assembly/model/ContainerClass#_decode (; 278 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 4952
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 4952
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
 (func $assembly/model/ContainerClass#decode<nearFile/Obj> (; 279 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/ContainerClass,nearFile/Obj> (; 280 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5088
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 5088
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
 (func $assembly/model/AnotherContainerClass#constructor (; 281 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 32
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $assembly/main/rewrapFoobar (; 282 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 33
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
 (func $assembly/test/rewrapFoobar (; 283 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#get:length (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__unchecked_get (; 285 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get (; 286 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<assembly/model/FooBar>#get:length (; 287 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__unchecked_get (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__get (; 289 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 672
   i32.const 952
   i32.const 92
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
   i32.const 1048
   i32.const 952
   i32.const 96
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<assembly/model/FooBar>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 290 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,~lib/assemblyscript-json/encoder/JSONEncoder> (; 291 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
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
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $assembly/model/AnotherContainerClass#_encode (; 292 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 2304
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
 (func $nearFile/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array> (; 293 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/test/__wrapper_rewrapFoobar (; 294 ;) (type $FUNCSIG$v)
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
  i32.const 5048
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
 (func $nearFile/isNullable<assembly/model/AnotherContainerClass> (; 295 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/isNullable<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>> (; 296 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor (; 297 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 33
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
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value> (; 298 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2504
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push (; 299 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<~lib/array/Array<assembly/model/FooBar>> (; 300 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2704
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 2624
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
    i32.const 656
    call $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value>
    local.set $8
    local.get $4
    local.get $8
    call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push
    drop
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.set $8
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
  local.get $8
 )
 (func $nearFile/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/Obj> (; 301 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5200
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
 (func $assembly/model/AnotherContainerClass#_decode (; 302 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 2304
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2304
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
 (func $assembly/model/AnotherContainerClass#decode<nearFile/Obj> (; 303 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/AnotherContainerClass,nearFile/Obj> (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 5136
    call $~lib/string/String.__concat
    local.tee $4
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $4
   i32.const 5136
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2624
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
 (func $assembly/main/unwrapFoobar (; 305 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/test/unwrapFoobar (; 306 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 307 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/test/__wrapper_unwrapFoobar (; 308 ;) (type $FUNCSIG$v)
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
  i32.const 5048
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
 (func $assembly/main/stringOrNull (; 309 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/rt/stub/__retain
 )
 (func $assembly/test/stringOrNull (; 310 ;) (type $FUNCSIG$i) (result i32)
  call $assembly/main/stringOrNull
 )
 (func $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array> (; 311 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/test/__wrapper_stringOrNull (; 312 ;) (type $FUNCSIG$v)
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
 (func $assembly/test/stringAliasTest (; 313 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 5336
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
 (func $assembly/test/__wrapper_stringAliasTest (; 314 ;) (type $FUNCSIG$v)
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
  i32.const 5312
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#set:length (; 315 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if
   local.get $1
   i32.const 2
   i32.shl
   local.set $3
   local.get $2
   i32.const 2
   i32.shl
   local.set $4
   loop $continue|0
    local.get $3
    i32.load
    call $~lib/rt/stub/__release
    local.get $3
    i32.const 4
    i32.add
    local.tee $3
    local.get $4
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
 (func $~lib/array/Array.create<~lib/typedarray/Uint8Array> (; 316 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_set (; 317 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 318 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $assembly/model/FooBar#toJSON (; 319 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 656
  i32.const 0
  call $assembly/model/FooBar#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/model/FooBar#encode (; 320 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 656
  i32.const 0
  call $assembly/model/FooBar#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 321 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 2776
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2776
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2624
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
 (func $assembly/model/Nullables#constructor (; 322 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 34
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
 )
 (func $assembly/model/Nullables#_encode (; 323 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 5312
  local.get $3
  call $nearFile/encode<~lib/string/String,~lib/assemblyscript-json/encoder/JSONEncoder>
  call $~lib/rt/stub/__release
  local.get $0
  i32.load offset=4
  i32.const 5752
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
 (func $assembly/model/Nullables#encode (; 324 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 656
  i32.const 0
  call $assembly/model/Nullables#_encode
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $nearFile/isNullable<assembly/model/Nullables> (; 325 ;) (type $FUNCSIG$i) (result i32)
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
 (func $assembly/model/Nullables#_decode (; 326 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.tee $2
  local.get $1
  i32.const 5312
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5312
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
  i32.const 5752
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5752
   call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj>
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
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/model/Nullables#decode<nearFile/Obj> (; 327 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array> (; 328 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 656
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
    i32.const 2432
    local.get $1
    call $~lib/string/String.__concat
    local.tee $8
    i32.const 2464
    call $~lib/string/String.__concat
    local.tee $6
    i32.const 5792
    call $~lib/string/String.__concat
    local.tee $5
    i32.const 2576
    call $~lib/string/String.__concat
    local.tee $7
    i32.const 2624
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
   i32.const 2656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2464
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 5792
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2808
   call $~lib/string/String.__concat
   local.tee $8
   i32.const 2624
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
 (func $assembly/test/runTest (; 329 ;) (type $FUNCSIG$v)
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
  i32.const 5368
  call $~lib/near-runtime-ts/logging/logging.log
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  local.get $0
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 26
  i32.const 5416
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
  i32.const 2904
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
  i32.const 5440
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $3
  local.get $1
  i32.load offset=40
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=40
  local.get $0
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1
  i32.const 2
  i32.const 16
  i32.const 5528
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $5
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  i32.const 1
  i32.const 2
  i32.const 16
  i32.const 5584
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $6
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $3
  local.tee $4
  local.get $1
  i32.load offset=44
  local.tee $1
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store offset=44
  local.get $0
  local.tee $4
  i32.const 2
  call $~lib/array/Array.create<~lib/typedarray/Uint8Array>
  local.set $3
  local.get $4
  i32.load offset=56
  call $~lib/rt/stub/__release
  local.get $3
  i32.store offset=56
  local.get $0
  i32.load offset=56
  i32.const 0
  i32.const 5440
  call $~lib/near-runtime-ts/base64/base64.decode
  local.tee $3
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=56
  i32.const 1
  i32.const 5440
  call $~lib/near-runtime-ts/base64/base64.decode
  local.tee $4
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  local.tee $1
  i32.const 2
  i32.const 3
  i32.const 28
  i32.const 5608
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.tee $7
  local.tee $8
  local.get $1
  i32.load offset=60
  local.tee $1
  i32.ne
  if
   local.get $8
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $8
  i32.store offset=60
  i32.const 5640
  local.get $0
  call $assembly/model/FooBar#toJSON
  local.tee $8
  call $~lib/string/String.__concat
  local.tee $1
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  call $assembly/model/FooBar#encode
  local.set $9
  local.get $9
  i32.const 656
  call $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.set $10
  i32.const 5672
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
   i32.const 5704
   i32.const 157
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
   i32.const 5704
   i32.const 158
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
   i32.const 5704
   i32.const 159
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=56
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  local.tee $15
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $16
  local.get $10
  i32.load offset=56
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  local.tee $17
  call $~lib/near-runtime-ts/base64/base64.encode
  local.tee $18
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 5704
   i32.const 160
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
  i32.const 5496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 5704
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<u64>#__get
  local.get $10
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<u64>#__get
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 5704
   i32.const 162
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
   i32.const 5704
   i32.const 163
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
  i32.const 656
  call $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array>
  local.set $23
  local.get $23
  i32.load
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 5704
   i32.const 166
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $23
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 5704
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5832
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $1
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
 (func $start (; 330 ;) (type $FUNCSIG$v)
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
 (func $null (; 331 ;) (type $FUNCSIG$v)
 )
)
