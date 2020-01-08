(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$ijii (func (param i64 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$vj (func (param i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "log_utf8" (func $~lib/near-runtime-ts/runtime_api/runtime_api.log_utf8 (param i64 i64)))
 (import "env" "input" (func $nearFile/input (param i64)))
 (import "env" "register_len" (func $nearFile/register_len (param i64) (result i64)))
 (import "env" "panic" (func $nearFile/panic))
 (import "env" "read_register" (func $nearFile/read_register (param i64 i64)))
 (import "env" "value_return" (func $nearFile/value_return (param i64 i64)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 32) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 64) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 96) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 120) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 144) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 216) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 360) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00b\00l\00o\00c\00k\00_\00i\00n\00d\00e\00x\00_\00s\00e\00e\00d\00e\00d\00_\00a\00t\00")
 (data (i32.const 424) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00k\00e\00y\00")
 (data (i32.const 480) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00i\00n\00d\00e\00x\00_\00k\00e\00y\00")
 (data (i32.const 544) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00 \00t\00e\00s\00t\00")
 (data (i32.const 592) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 640) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 696) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 744) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 792) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 816) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00*\00\00\00\0b\00\00\00")
 (data (i32.const 840) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 864) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 920) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 936) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 992) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1048) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 1080) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00(\04\00\00")
 (data (i32.const 1104) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00W\00o\00r\00l\00d\00")
 (data (i32.const 1136) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00`\04\00\00")
 (data (i32.const 1160) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1208) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00")
 (data (i32.const 1240) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00B\00e\00f\00o\00r\00e\00:\00 \00")
 (data (i32.const 1272) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1296) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1320) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1344) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 1368) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 1392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1416) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 1440) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1464) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 1488) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1512) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 1536) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1560) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 1584) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 1672) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 1696) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2112) "\10\00\00\00\01\00\00\00\n\00\00\00\10\00\00\00\b0\06\00\00\b0\06\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 2144) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2168) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 2256) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2280) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2304) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 2328) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 2360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 2384) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 2408) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 2432) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 2456) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 2488) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00u\006\004\00_\00z\00e\00r\00o\00")
 (data (i32.const 2520) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 2552) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 2576) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 2600) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 2640) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 2664) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2688) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2800) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 2824) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2872) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 2904) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 2936) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 2968) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 3064) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 3136) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 3176) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 3216) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00A\00r\00r\00")
 (data (i32.const 3248) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 3272) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 3328) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 3416) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 3456) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3536) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 3608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 3632) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 3656) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 3680) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 3704) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 3728) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 3752) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 3808) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 3888) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 3928) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 3992) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 4056) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 4096) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 4120) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 4144) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 4200) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 4256) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 4296) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 4328) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 4368) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00F\00o\00o\00B\00a\00r\00")
 (data (i32.const 4400) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 4448) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00n\00e\00a\00r\00F\00i\00l\00e\00")
 (data (i32.const 4480) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 4528) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 4600) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 4624) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r\00")
 (data (i32.const 4680) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 4704) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 4728) "~\00\00\00\01\00\00\00\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 4872) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 4896) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 4920) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 4968) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 5000) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 5064) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 5104) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00>\00")
 (data (i32.const 5208) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 5280) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00")
 (data (i32.const 5352) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\003\002\00>\00")
 (data (i32.const 5392) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00i\003\002\00>\00")
 (data (i32.const 5432) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\001\002\008\00")
 (data (i32.const 5456) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 5504) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 5560) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 5656) "\10\00\00\00\01\00\00\00\1f\00\00\00\10\00\00\00\c8\15\00\00\c8\15\00\00K\00\00\00K\00\00\00")
 (data (i32.const 5688) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00/\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00>\00")
 (data (i32.const 5776) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\006\004\00>\00")
 (data (i32.const 5816) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00A\00f\00t\00e\00r\00:\00 \00 \00")
 (data (i32.const 5848) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 5896) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00t\00r\00")
 (data (i32.const 5920) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 5960) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00N\00u\00l\00l\00a\00b\00l\00e\00s\00")
 (data (i32.const 6000) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6016) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\15\cd[\07\00\00\00\00")
 (data (i32.const 6040) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6056) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 6096) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\"\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00\"\00")
 (data (i32.const 6160) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00T\00e\00s\00t\00 \00P\00a\00s\00s\00e\00d\00")
 (data (i32.const 6200) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 6232) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00")
 (data (i32.const 6304) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 6336) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 6400) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 6440) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 6488) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00A\00n\00o\00t\00h\00e\00r\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 6552) "\\\00\00\00\01\00\00\00\01\00\00\00\\\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00>\00")
 (data (i32.const 6664) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00 \00W\00o\00r\00l\00d\00")
 (data (i32.const 6696) "&\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93 \00\00\02\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\0e\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\11\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\13\00\00\00\98 A\00\00\00\00\00\10\00\00\00\13\00\00\00\10\00\00\00\13\00\00\00\10\00\00\00\13\00\00\00\10\00\00\00\13\00\00\00\10\00\00\00\13\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $assembly/main/convertFoobars~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/storage/storage (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 24))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 48))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 80))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 112))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_RATING_SUFFIX i32 (i32.const 136))
 (global $~lib/near-runtime-ts/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $~lib/bignum/utils/HEX_CHARS i32 (i32.const 160))
 (global $~lib/bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $~lib/near-runtime-ts/contract/context (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/base64/base64.PADCHAR i32 (i32.const 208))
 (global $~lib/near-runtime-ts/base64/base64.ALPHA i32 (i32.const 232))
 (global $~lib/near-runtime-ts/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 376))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_KEY i32 (i32.const 440))
 (global $~lib/near-runtime-ts/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 496))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 2320))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 2344))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 2160))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $nearFile/JSON.handler (mut i32) (i32.const 0))
 (global $nearFile/JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/bignum/integer/u128/HEX_CHARS i32 (i32.const 160))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/bignum/utils/RadixCharsTable i32 (i32.const 5672))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 6696))
 (global $~lib/heap/__heap_base i32 (i32.const 7004))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "runTest" (func $assembly/test/runTest))
 (export "convertFoobars" (func $assembly/test/__wrapper_convertFoobars))
 (export "getStringArrayLength" (func $assembly/test/__wrapper_getStringArrayLength))
 (export "rewrapFoobar" (func $assembly/test/__wrapper_rewrapFoobar))
 (export "unwrapFoobar" (func $assembly/test/__wrapper_unwrapFoobar))
 (export "stringOrNull" (func $assembly/test/__wrapper_stringOrNull))
 (export "stringAliasTest" (func $assembly/test/__wrapper_stringAliasTest))
 (export "classOrNull" (func $assembly/test/__wrapper_classOrNull))
 (export "classAndNull" (func $assembly/test/__wrapper_classAndNull))
 (start $start)
 (func $~lib/rt/stub/maybeGrowMemory (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/stub/__alloc (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/stub/__retain (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 11 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/string/String.UTF8.byteLength (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $4
  i32.const 1
  i32.const 0
  local.get $1
  select
  local.set $2
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.eqz
     i32.const 0
     local.get $1
     select
     br_if $break|0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $0
     i32.const 2
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $0
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
       local.get $0
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
        br $continue|0
       end
      end
      local.get $2
      i32.const 3
      i32.add
      local.set $2
      local.get $0
      i32.const 2
      i32.add
     end
    end
    local.set $0
    br $continue|0
   end
  end
  local.get $2
 )
 (func $~lib/memory/memory.fill (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 608
   i32.const 656
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
  local.tee $2
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
  local.tee $3
  local.get $3
  i32.load
  drop
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/memory/memcpy (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 17 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/stub/__realloc (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 760
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
   i32.const 760
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
 (func $~lib/string/String.UTF8.encode (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $4
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $5
  local.set $2
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.eqz
     i32.const 0
     local.get $1
     select
     br_if $break|0
     local.get $2
     local.get $3
     i32.store8
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $0
     i32.const 2
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $2
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $0
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
       local.get $0
       i32.load16_u offset=2
       local.tee $6
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $6
        i32.const 1023
        i32.and
        i32.add
        local.tee $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $2
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $2
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $2
        local.get $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $continue|0
       end
      end
      local.get $2
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $2
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
      local.set $2
      local.get $0
      i32.const 2
      i32.add
     end
    end
    local.set $0
    br $continue|0
   end
  end
  local.get $1
  if
   local.get $0
   local.get $4
   i32.gt_u
   if
    i32.const 0
    i32.const 712
    i32.const 567
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   local.get $2
   local.get $5
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/stub/__realloc
   local.set $5
   local.get $2
   i32.const 0
   i32.store8
  else
   local.get $0
   local.get $4
   i32.ne
   if
    i32.const 0
    i32.const 712
    i32.const 571
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
 )
 (func $~lib/near-runtime-ts/util/util.stringToBytes (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/near-runtime-ts/logging/logging.log (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $assembly/model/FooBar#constructor (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 808
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
 (func $~lib/rt/__allocArray (; 23 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/string/String#get:length (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 936
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
 (func $~lib/util/string/compareImpl (; 26 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
   loop $continue|0
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
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $4
    local.tee $0
    i32.const 1
    i32.sub
    local.set $4
    local.get $0
    i32.eqz
    br_if $break|1
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
    else
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#indexOf (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  loop $loop|0
   block $break|0
    local.get $2
    local.get $3
    i32.gt_s
    br_if $break|0
    local.get $0
    local.get $2
    local.get $1
    i32.const 0
    local.get $4
    call $~lib/util/string/compareImpl
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    else
     local.get $2
     return
    end
    unreachable
   end
  end
  i32.const -1
 )
 (func $~lib/near-runtime-ts/base64/base64.getByte64 (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 232
  local.get $0
  local.get $1
  call $~lib/string/String#charAt
  i32.const 0
  call $~lib/string/String#indexOf
 )
 (func $~lib/typedarray/Uint8Array#__set (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 952
   i32.const 1008
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
 (func $~lib/near-runtime-ts/base64/base64.decode (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 208
  call $~lib/string/String.__eq
  if
   i32.const 1
   local.set $7
   local.get $0
   local.get $4
   i32.const 2
   i32.sub
   call $~lib/string/String#charAt
   i32.const 208
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
  loop $loop|0
   block $break|0
    local.get $2
    local.get $4
    i32.ge_u
    br_if $break|0
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
    br $loop|0
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
 (func $~lib/bignum/integer/u128/u128#constructor (; 32 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/ensureSize (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
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
    i32.const 608
    i32.const 1176
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   call $~lib/rt/stub/__realloc
   local.tee $1
   local.get $3
   i32.add
   i32.const 0
   local.get $2
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#set:length (; 35 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $3
   local.get $4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $2
   loop $continue|0
    local.get $3
    i32.load
    drop
    local.get $3
    i32.const 4
    i32.add
    local.tee $3
    local.get $2
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 36 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 952
    i32.const 1176
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
 (func $~lib/array/Array<i32>#constructor (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<~lib/string/String>#constructor (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#push (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 14
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
 (func $nearFile/JSONEncoder#constructor (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 15
   call $~lib/rt/stub/__alloc
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
 )
 (func $~lib/array/Array<i32>#__get (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
 (func $~lib/array/Array<~lib/string/String>#push (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 44 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
 )
 (func $~lib/array/Array<i32>#__set (; 45 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 952
    i32.const 1176
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
 (func $~lib/string/String.__ne (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/string/String#charCodeAt (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#substring (; 48 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
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
  local.set $4
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
  local.set $2
  local.get $4
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  local.get $2
  local.get $1
  local.get $2
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $1
  local.get $4
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 936
   return
  end
  local.get $4
  if (result i32)
   i32.const 0
  else
   local.get $1
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  end
  if
   local.get $0
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  local.get $4
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/util/number/decimalCount32 (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 2128
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
 (func $~lib/util/number/itoa32 (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1688
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
 (func $~lib/string/String#concat (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 2160
  local.get $1
  select
  local.set $1
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
   i32.const 936
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
 (func $~lib/string/String.__concat (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 2160
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1312
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  i32.const 0
  local.set $4
  i32.const 0
  local.set $3
  loop $loop|0
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
     i32.const 1312
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     local.set $5
    end
    local.get $5
    i32.eqz
    if (result i32)
     i32.const 1336
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
     i32.const 1312
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     if
      local.get $0
      i32.const 1360
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      i32.const 1336
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $2
      i32.eq
      if
       local.get $0
       i32.const 1384
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       i32.const 1408
       i32.const 0
       call $~lib/string/String#charCodeAt
       local.get $2
       i32.eq
       if
        local.get $0
        i32.const 1432
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        i32.const 1456
        i32.const 0
        call $~lib/string/String#charCodeAt
        local.get $2
        i32.eq
        if
         local.get $0
         i32.const 1480
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         i32.const 1504
         i32.const 0
         call $~lib/string/String#charCodeAt
         local.get $2
         i32.eq
         if
          local.get $0
          i32.const 1528
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          i32.const 1552
          i32.const 0
          call $~lib/string/String#charCodeAt
          local.get $2
          i32.eq
          if
           local.get $0
           i32.const 1576
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 1600
           local.get $2
           call $~lib/util/number/itoa32
           call $~lib/string/String.__concat
           i32.const 2184
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
    br $loop|0
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
  i32.const 1312
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 1288
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
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2272
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2296
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $start:~lib/assemblyscript-json/decoder (; 57 ;) (type $FUNCSIG$v)
  i32.const 1688
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 2376
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 2400
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 2424
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $~lib/array/Array<nearFile/Value>#constructor (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 20
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
 (func $nearFile/Handler#constructor (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 18
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 16
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/array/Array<nearFile/Value>#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#constructor (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 21
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
 (func $~lib/util/number/decimalCount64 (; 61 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 62 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 2128
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
 (func $~lib/util/number/itoa64 (; 63 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1688
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 64 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $nearFile/encode<i32,nearFile/JSONEncoder> (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $nearFile/encode<u32,nearFile/JSONEncoder> (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $~lib/util/number/utoa64 (; 67 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1688
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
 )
 (func $nearFile/encode<u64,nearFile/JSONEncoder> (; 69 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  call $~lib/util/number/utoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 70 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2160
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $nearFile/encode<~lib/string/String,nearFile/JSONEncoder> (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__get (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 952
   i32.const 1008
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
 (func $~lib/util/string/joinStringArray (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 936
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
    i32.const 936
   end
   return
  end
  i32.const 0
  local.set $4
  i32.const 0
  local.set $3
  loop $loop|0
   block $break|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    local.get $6
    local.tee $7
    if
     local.get $7
     call $~lib/string/String#get:length
     local.get $4
     i32.add
     local.set $4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
  end
  i32.const 0
  local.set $5
  local.get $4
  local.get $2
  call $~lib/string/String#get:length
  local.tee $6
  local.get $8
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $4
  i32.const 0
  local.set $3
  loop $loop|1
   block $break|1
    local.get $3
    local.get $8
    i32.ge_s
    br_if $break|1
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $1
    local.get $1
    local.tee $7
    if
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $7
     call $~lib/string/String#get:length
     local.tee $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $5
     i32.add
     local.set $5
    end
    local.get $6
    if
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $5
     local.get $6
     i32.add
     local.set $5
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|1
   end
  end
  local.get $0
  local.get $8
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  local.tee $7
  if
   local.get $4
   local.get $5
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
  local.get $4
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinStringArray
 )
 (func $~lib/near-runtime-ts/base64/base64.encode (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 936
   return
  end
  i32.const 0
  local.set $3
  loop $loop|0
   block $break|0
    local.get $3
    local.get $4
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 232
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
    i32.const 232
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 232
    local.get $2
    i32.const 6
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 232
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
    br $loop|0
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
    i32.const 232
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
    i32.const 232
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 208
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 208
    call $~lib/array/Array<~lib/string/String>#push
    drop
    br $break|1
   end
   local.get $1
   i32.const 232
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
   i32.const 232
   local.get $2
   i32.const 12
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 232
   local.get $2
   i32.const 6
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 208
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $1
  i32.const 936
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $nearFile/encode<~lib/typedarray/Uint8Array,nearFile/JSONEncoder> (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 77 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2680
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 78 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#pop (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2840
   i32.const 1176
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 81 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2816
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $nearFile/encode<~lib/array/Array<~lib/string/String>,nearFile/JSONEncoder> (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/string/String>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/string/String,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/JSONEncoder> (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/array/Array<~lib/string/String>,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $~lib/array/Array<u32>#__get (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
 (func $nearFile/encode<~lib/array/Array<u32>,nearFile/JSONEncoder> (; 85 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<u32>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<u32,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $nearFile/encode<~lib/array/Array<i32>,nearFile/JSONEncoder> (; 86 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<i32,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $~lib/typedarray/Int8Array#__get (; 87 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 952
   i32.const 1008
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
 (func $~lib/typedarray/Int8Array#__set (; 88 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 952
   i32.const 1008
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
 (func $~lib/bignum/utils/processU64 (; 89 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
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
  loop $loop|0
   block $break|0
    local.get $3
    i32.const -1
    i32.eq
    br_if $break|0
    i32.const 0
    local.set $2
    loop $loop|1
     block $break|1
      local.get $2
      local.get $4
      i32.gt_s
      br_if $break|1
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
      br $loop|1
     end
    end
    local.get $4
    local.set $2
    loop $loop|2
     block $break|2
      local.get $2
      i32.const -1
      i32.eq
      br_if $break|2
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
      br $loop|2
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
    br $loop|0
   end
  end
 )
 (func $~lib/bignum/utils/u128toa10 (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 12
  i32.const 23
  call $~lib/rt/stub/__alloc
  i32.const 40
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  local.get $0
  i64.load offset=8
  call $~lib/bignum/utils/processU64
  local.get $2
  local.get $0
  i64.load
  call $~lib/bignum/utils/processU64
  i32.const 936
  local.set $1
  i32.const 0
  local.set $3
  i32.const 39
  local.set $0
  loop $loop|0
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
     i32.const 160
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
    br $loop|0
   end
  end
  local.get $1
 )
 (func $~lib/bignum/integer/u128/u128#toString (; 91 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
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
   i32.const 2984
   i32.const 3080
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
   i32.const 1688
   return
  end
  i32.const 936
  local.set $4
  i32.const 0
  local.get $0
  local.tee $2
  i64.load
  local.get $2
  i64.load offset=8
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $6
  local.get $1
  i32.const 16
  i32.eq
  if
   local.get $6
   local.tee $2
   i64.load
   local.set $7
   i32.const 124
   local.get $2
   i64.load offset=8
   local.tee $5
   i64.const 1
   i64.sub
   local.get $5
   i64.xor
   i64.const 63
   i64.shr_s
   local.tee $3
   i64.const -1
   i64.xor
   local.get $5
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
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.const 160
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
     local.tee $5
     i64.const -1
     i64.xor
     local.get $6
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
     local.get $5
     i64.and
     i64.or
     local.get $5
     local.get $9
     i64.and
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $4
     local.get $4
     local.tee $6
     i64.load
     i64.const 15
     i64.and
     i32.wrap_i64
     call $~lib/string/String#charAt
     call $~lib/string/String#concat
     local.set $4
     local.get $2
     i32.const 4
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $4
   return
  else
   local.get $1
   i32.const 10
   i32.eq
   if
    local.get $0
    call $~lib/bignum/utils/u128toa10
    return
   end
  end
  i32.const 3152
 )
 (func $nearFile/encode<~lib/bignum/integer/u128/u128,nearFile/JSONEncoder> (; 92 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $3
  i64.load offset=8
  i32.const 0
  local.tee $4
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $3
   i64.load
   local.get $4
   i64.load
   i64.eq
  else
   i32.const 0
  end
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
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 93 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/JSONEncoder> (; 94 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/typedarray/Uint8Array,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $~lib/array/Array<u64>#__get (; 95 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
 (func $nearFile/encode<~lib/array/Array<u64>,nearFile/JSONEncoder> (; 96 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<u64>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<u64,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 97 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 3264
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $assembly/model/FooBar#_encode (; 98 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 856
  local.get $2
  call $nearFile/encode<i32,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 2448
  local.get $2
  call $nearFile/encode<u32,nearFile/JSONEncoder>
  drop
  local.get $0
  i64.load offset=8
  i32.const 2472
  local.get $2
  call $nearFile/encode<u64,nearFile/JSONEncoder>
  drop
  local.get $0
  i64.load offset=16
  i32.const 2504
  local.get $2
  call $nearFile/encode<u64,nearFile/JSONEncoder>
  drop
  local.get $2
  i32.const 2536
  local.get $0
  i64.load offset=24
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $0
  i32.load8_u offset=32
  local.set $1
  local.get $2
  i32.const 2568
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $2
  i32.const 2320
  i32.const 2344
  local.get $1
  select
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load offset=36
  i32.const 2592
  local.get $2
  call $nearFile/encode<~lib/string/String,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=40
  i32.const 2616
  local.get $2
  call $nearFile/encode<~lib/typedarray/Uint8Array,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=44
  i32.const 2656
  local.get $2
  call $nearFile/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=48
  i32.const 2888
  local.get $2
  call $nearFile/encode<~lib/array/Array<u32>,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=52
  i32.const 2920
  local.get $2
  call $nearFile/encode<~lib/array/Array<i32>,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=56
  i32.const 2952
  local.get $2
  call $nearFile/encode<~lib/bignum/integer/u128/u128,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=60
  i32.const 3192
  local.get $2
  call $nearFile/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=64
  i32.const 3232
  local.get $2
  call $nearFile/encode<~lib/array/Array<u64>,nearFile/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 936
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $assembly/model/FooBar#toJSON (; 100 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 936
  i32.const 0
  call $assembly/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 101 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.set $2
  local.get $1
  i32.load offset=4
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $assembly/model/FooBar#encode (; 103 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 936
  i32.const 0
  call $assembly/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 104 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 22
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 936
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar (; 105 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#isWhitespace (; 106 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar (; 107 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 3288
   i32.const 3344
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace (; 108 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $nearFile/Value#constructor (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 19
   call $~lib/rt/stub/__alloc
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 110 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 608
   i32.const 656
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
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#clear (; 111 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#constructor (; 112 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 25
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
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#clear
  local.get $0
 )
 (func $nearFile/Obj#constructor (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 24
   call $~lib/rt/stub/__alloc
  end
  call $nearFile/Value#constructor
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  i32.const 0
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#constructor
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
 (func $~lib/array/Array<nearFile/Value>#push (; 114 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<nearFile/Value>#__get (; 115 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $nearFile/Handler#get:peek (; 116 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<nearFile/Value>#__get
 )
 (func $~lib/rt/__instanceof (; 117 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/hash/hashStr (; 118 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $2
  local.get $0
  if
   block $break|0
    i32.const 0
    local.set $1
    local.get $0
    call $~lib/string/String#get:length
    i32.const 1
    i32.shl
    local.set $3
    loop $loop|0
     local.get $1
     local.get $3
     i32.ge_u
     br_if $break|0
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
     br $loop|0
    end
    unreachable
   end
  end
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#find (; 119 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  loop $continue|0
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
    else
     local.get $0
     i32.load offset=8
     i32.const -2
     i32.and
     local.set $0
     br $continue|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#has (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#rehash (; 121 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  loop $continue|0
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
    br $continue|0
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
  local.get $0
  i32.load offset=8
  drop
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#set (; 122 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $5
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
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
    call $~lib/map/Map<~lib/string/String,nearFile/Value>#rehash
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
 )
 (func $nearFile/Obj#set (; 123 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 )
 (func $nearFile/Handler#addValue (; 124 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   call $~lib/array/Array<nearFile/Value>#push
   drop
   return
  end
  local.get $0
  call $nearFile/Handler#get:peek
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
   call $nearFile/Handler#get:peek
   local.get $1
   local.get $2
   call $nearFile/Obj#set
  else
   local.get $0
   call $nearFile/Handler#get:peek
   local.tee $1
   if (result i32)
    local.get $1
    i32.const 26
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    local.get $0
    call $nearFile/Handler#get:peek
    i32.load
    local.get $2
    call $~lib/array/Array<nearFile/Value>#push
    drop
   end
  end
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 125 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 712
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
  local.tee $5
  local.set $3
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.load8_u
    local.tee $1
    i32.const 128
    i32.lt_u
    if
     local.get $1
     i32.eqz
     i32.const 0
     local.get $2
     select
     br_if $break|0
     local.get $3
     local.get $1
     i32.store16
     local.get $3
     i32.const 2
     i32.add
     local.set $3
    else
     local.get $1
     i32.const 224
     i32.lt_u
     i32.const 0
     local.get $1
     i32.const 191
     i32.gt_u
     select
     if
      local.get $4
      local.get $0
      i32.sub
      i32.const 1
      i32.lt_u
      br_if $break|0
      local.get $0
      local.tee $6
      i32.const 1
      i32.add
      local.set $0
      local.get $3
      local.get $6
      i32.load8_u
      i32.const 63
      i32.and
      local.get $1
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
      local.get $3
      i32.const 2
      i32.add
      local.set $3
     else
      local.get $1
      i32.const 365
      i32.lt_u
      i32.const 0
      local.get $1
      i32.const 239
      i32.gt_u
      select
      if (result i32)
       local.get $4
       local.get $0
       i32.sub
       i32.const 3
       i32.lt_u
       br_if $break|0
       local.get $3
       local.get $0
       i32.load8_u offset=2
       i32.const 63
       i32.and
       local.get $1
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.const 65536
       i32.sub
       local.tee $1
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       local.get $3
       local.get $1
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16 offset=2
       local.get $3
       i32.const 4
       i32.add
       local.set $3
       local.get $0
       i32.const 3
       i32.add
      else
       local.get $4
       local.get $0
       i32.sub
       i32.const 2
       i32.lt_u
       br_if $break|0
       local.get $3
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       local.get $1
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       local.get $0
       i32.const 2
       i32.add
      end
      local.set $0
     end
    end
    br $continue|0
   end
  end
  local.get $5
  local.get $3
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 126 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  local.get $0
  i32.load offset=8
  i32.load offset=4
  i32.add
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit (; 127 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
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
   i32.const 3768
   i32.const 3344
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCodePoint (; 128 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1114111
  i32.gt_u
  if
   i32.const 0
   i32.const 712
   i32.const 22
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
   i32.add
   i32.const 16
   i32.shl
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.add
   i32.or
   i32.store
  else
   local.get $1
   local.get $0
   i32.store16
  end
  local.get $1
 )
 (func $~lib/string/String.fromCharCode (; 129 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readEscapedChar (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  local.set $1
  i32.const 1312
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1312
   return
  end
  i32.const 1336
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1336
   return
  end
  i32.const 3624
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 3624
   return
  end
  i32.const 3648
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1408
   return
  end
  i32.const 3672
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1456
   return
  end
  i32.const 3696
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1504
   return
  end
  i32.const 3720
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1552
   return
  end
  i32.const 3744
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $1
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readHexDigit
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
  i32.const 3824
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  local.set $0
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
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/string/String.fromCharCode
  call $~lib/string/String.__concat
  i32.const 3344
  i32.const 255
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readString (; 131 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  i32.const 1312
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3472
   i32.const 3344
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
  loop $loop|0 (result i32)
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   local.tee $3
   i32.const 32
   i32.lt_s
   if
    i32.const 3552
    i32.const 3344
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1312
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $3
   i32.eq
   if (result i32)
    i32.const 1
    global.set $~lib/argc
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
    i32.const 936
    call $~lib/array/Array<~lib/string/String>#join
   else
    i32.const 1336
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $3
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
      call $~lib/array/Array<~lib/string/String>#push
      drop
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readEscapedChar
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
    end
    br $loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseKey (; 132 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  drop
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
  i32.const 2272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3904
   i32.const 3344
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<nearFile/Value>#pop (; 133 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2840
   i32.const 1176
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseObject (; 134 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2296
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
  i32.const 936
  i32.store
  local.get $0
  i32.load
  local.tee $1
  local.get $2
  i32.const 0
  call $nearFile/Obj#constructor
  local.tee $2
  call $nearFile/Handler#addValue
  local.get $1
  i32.load
  local.get $2
  call $~lib/array/Array<nearFile/Value>#push
  drop
  i32.const 1
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
    i32.const 3264
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
      call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
      i32.const 1288
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3432
       i32.const 3344
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
     drop
     br $continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   i32.const 3264
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 3944
    i32.const 3344
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
   call $~lib/array/Array<nearFile/Value>#pop
   drop
  end
  i32.const 1
 )
 (func $nearFile/Arr#constructor (; 135 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 26
   call $~lib/rt/stub/__alloc
  end
  call $nearFile/Value#constructor
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/array/Array<nearFile/Value>#constructor
  local.set $1
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $nearFile/Handler#pushArray (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  call $nearFile/Arr#constructor
  local.set $2
  local.get $0
  i32.load
  i32.load offset=12
  if
   local.get $0
   local.get $1
   local.get $2
   call $nearFile/Handler#addValue
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<nearFile/Value>#push
   drop
  else
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<nearFile/Value>#push
   drop
  end
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseArray (; 137 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2680
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
  i32.const 936
  i32.store
  local.get $0
  i32.load
  local.get $2
  call $nearFile/Handler#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $continue|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
    i32.const 2816
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
      call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
      i32.const 1288
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3432
       i32.const 3344
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
     drop
     br $continue|0
    end
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   i32.const 2816
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 4008
    i32.const 3344
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
   call $~lib/array/Array<nearFile/Value>#pop
   drop
  end
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseString (; 138 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 1312
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
  local.set $1
  i32.const 4
  i32.const 27
  call $~lib/rt/stub/__alloc
  call $nearFile/Value#constructor
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  call $nearFile/Handler#addValue
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert (; 139 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
    i32.ne
    if
     i32.const 4072
     local.get $1
     call $~lib/string/String.__concat
     i32.const 4112
     call $~lib/string/String.__concat
     i32.const 3344
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
   unreachable
  end
 )
 (func $nearFile/Handler#setBoolean (; 140 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.const 28
  call $~lib/rt/stub/__alloc
  call $nearFile/Value#constructor
  local.tee $0
  local.get $2
  i32.store8
  local.get $0
  call $nearFile/Handler#addValue
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseBoolean (; 141 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2344
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
  i32.const 2320
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNumber (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $3
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 4136
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
   drop
  end
  i32.const 0
  local.set $2
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
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readChar
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
    br $continue|0
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
   i32.const 29
   call $~lib/rt/stub/__alloc
   call $nearFile/Value#constructor
   local.tee $0
   local.get $1
   i64.store
   local.get $0
   call $nearFile/Handler#addValue
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseNull (; 143 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#peekChar
  i32.const 2160
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   i32.const 2160
   call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   i32.const 30
   call $~lib/rt/stub/__alloc
   call $nearFile/Value#constructor
   call $nearFile/Handler#addValue
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue (; 144 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#deserialize (; 145 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   local.set $1
   local.get $0
   i32.load offset=4
   drop
   local.get $0
   local.get $1
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#parseValue
  i32.eqz
  if
   i32.const 4160
   i32.const 3344
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $nearFile/JSON.parse (; 146 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $nearFile/JSON.decoder
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#deserialize
  global.get $nearFile/JSON.decoder
  i32.load
  call $nearFile/Handler#get:peek
  local.set $0
  global.get $nearFile/JSON.decoder
  i32.load
  local.set $1
  loop $continue|0
   local.get $1
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $1
    i32.load
    call $~lib/array/Array<nearFile/Value>#pop
    drop
    br $continue|0
   end
  end
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,nearFile/Value>#get (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 4216
   i32.const 4272
   i32.const 111
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $nearFile/Obj#get (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#has
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#get
 )
 (func $nearFile/isReallyNullable<assembly/model/FooBar> (; 149 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/Obj#has (; 150 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,nearFile/Value>#has
 )
 (func $nearFile/isReallyNullable<i32> (; 151 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<i32,nearFile/Obj> (; 152 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<i32>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4616
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4616
   call $~lib/string/String.__concat
   i32.const 4640
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 403
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.load
  i32.wrap_i64
 )
 (func $nearFile/isReallyNullable<u32> (; 153 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<u32,nearFile/Obj> (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<u32>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4696
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4696
   call $~lib/string/String.__concat
   i32.const 4640
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 403
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.load
  i32.wrap_i64
 )
 (func $nearFile/isReallyNullable<u64> (; 155 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/util/string/isSpace (; 156 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/string/strtol<i64> (; 157 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
  loop $continue|0
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
    br $continue|0
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
  loop $continue|2
   block $break|2
    local.get $3
    local.tee $2
    i32.const 1
    i32.sub
    local.set $3
    local.get $2
    i32.eqz
    br_if $break|2
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
       br $break|2
      end
     end
    end
    local.tee $2
    local.get $1
    i32.ge_u
    br_if $break|2
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
    br $continue|2
   end
  end
  local.get $4
  local.get $5
  i64.mul
 )
 (func $~lib/number/I64.parseInt (; 158 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
 )
 (func $nearFile/decode<u64,nearFile/Obj> (; 159 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i64.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<u64>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4720
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   return
  end
  local.get $2
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 4744
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 398
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $nearFile/isReallyNullable<i64> (; 160 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<i64,nearFile/Obj> (; 161 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i64.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<i64>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4888
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   return
  end
  local.get $2
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4888
   call $~lib/string/String.__concat
   i32.const 4744
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 398
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $nearFile/decode<bool,nearFile/Obj> (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 4312
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4912
   call $~lib/string/String.__concat
   i32.const 4416
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 381
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 28
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4912
   call $~lib/string/String.__concat
   i32.const 4936
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 390
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load8_u
 )
 (func $nearFile/isReallyNullable<~lib/string/String> (; 163 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<~lib/string/String,nearFile/Obj> (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4984
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $nearFile/isReallyNullable<~lib/typedarray/Uint8Array> (; 165 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj> (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5080
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/near-runtime-ts/base64/base64.decode
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/isReallyNullable<~lib/array/Array<~lib/string/String>> (; 168 ;) (type $FUNCSIG$i) (result i32)
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
 (func $nearFile/decode<~lib/string/String,nearFile/Value> (; 169 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4984
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $nearFile/decodeArray<~lib/string/String> (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<~lib/string/String,nearFile/Value>
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Value> (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5296
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<~lib/string/String>
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 172 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<~lib/array/Array<~lib/string/String>> (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Value>
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/Obj> (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<~lib/array/Array<~lib/string/String>>
 )
 (func $~lib/array/Array<u32>#constructor (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<u32,nearFile/Value> (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<u32>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4696
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4696
   call $~lib/string/String.__concat
   i32.const 4640
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 403
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.load
  i32.wrap_i64
 )
 (func $~lib/array/Array<u32>#push (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<u32> (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<u32,nearFile/Value>
    call $~lib/array/Array<u32>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<u32>,nearFile/Obj> (; 179 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<u32>
 )
 (func $nearFile/decode<i32,nearFile/Value> (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<i32>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4616
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4616
   call $~lib/string/String.__concat
   i32.const 4640
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 403
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.load
  i32.wrap_i64
 )
 (func $nearFile/decodeArray<i32> (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<i32,nearFile/Value>
    call $~lib/array/Array<i32>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<i32>,nearFile/Obj> (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<i32>
 )
 (func $nearFile/isReallyNullable<~lib/bignum/integer/u128/u128> (; 183 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<u8>#__get (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
 (func $~lib/bignum/globals/__multi3 (; 185 ;) (type $FUNCSIG$vijjjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
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
 (func $~lib/bignum/utils/atou128 (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 5472
   i32.const 5520
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $9
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   return
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.tee $3
  i32.const 48
  i32.eq
  i32.const 0
  local.get $9
  i32.const 1
  i32.eq
  select
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   return
  end
  local.get $0
  local.get $3
  i32.const 45
  i32.eq
  local.tee $11
  local.get $3
  i32.const 43
  i32.eq
  local.get $11
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
   local.tee $3
   i32.const 88
   i32.eq
   local.get $3
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
    local.get $3
    i32.const 79
    i32.eq
    local.get $3
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
     local.get $3
     i32.const 66
     i32.eq
     local.get $3
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
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $3
  i32.const 5672
  local.set $12
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      local.get $1
      local.tee $2
      i32.const 2
      i32.ne
      if
       local.get $2
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $2
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      loop $continue|1
       local.get $0
       local.get $4
       call $~lib/string/String#charCodeAt
       i32.const 48
       i32.sub
       local.tee $2
       i32.const 2
       i32.lt_u
       if
        i32.const 0
        local.get $3
        i64.load
        local.tee $5
        i64.const 1
        i64.shl
        local.get $3
        i64.load offset=8
        i64.const 1
        i64.shl
        local.get $5
        i64.const 63
        i64.shr_u
        i64.or
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $6
        local.get $6
        local.set $8
        i32.const 0
        local.get $2
        i64.extend_i32_u
        i64.const 0
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $2
        i32.const 0
        local.get $8
        i64.load
        local.get $2
        i64.load
        i64.or
        local.get $8
        i64.load offset=8
        local.get $2
        i64.load offset=8
        i64.or
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $2
        local.get $2
        local.set $3
        local.get $4
        i32.const 1
        i32.add
        local.tee $4
        local.get $9
        i32.lt_s
        br_if $continue|1
       end
      end
      br $break|0
     end
     loop $continue|2
      local.get $0
      local.get $4
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.tee $8
      i32.const 10
      i32.lt_u
      if
       i32.const 0
       local.get $3
       i64.load
       local.tee $5
       i64.const 3
       i64.shl
       local.get $3
       i64.load offset=8
       i64.const 3
       i64.shl
       local.get $5
       i64.const 61
       i64.shr_u
       i64.or
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $2
       i32.const 0
       local.get $3
       i64.load
       local.tee $7
       i64.const 1
       i64.shl
       local.get $3
       i64.load offset=8
       i64.const 1
       i64.shl
       local.get $7
       i64.const 63
       i64.shr_u
       i64.or
       call $~lib/bignum/integer/u128/u128#constructor
       local.tee $6
       i64.load
       local.tee $7
       local.get $2
       i64.load
       i64.add
       local.tee $5
       local.get $7
       i64.lt_u
       i64.extend_i32_u
       local.get $2
       i64.load offset=8
       local.get $6
       i64.load offset=8
       i64.add
       i64.add
       local.set $7
       i32.const 0
       local.get $5
       local.get $7
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $2
       local.get $2
       local.set $6
       i32.const 0
       local.get $8
       i64.extend_i32_u
       i64.const 0
       call $~lib/bignum/integer/u128/u128#constructor
       local.tee $2
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
       local.get $2
       i64.load offset=8
       i64.add
       i64.add
       local.set $5
       i32.const 0
       local.get $7
       local.get $5
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $6
       local.get $6
       local.set $3
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $9
       i32.lt_s
       br_if $continue|2
      end
     end
     br $break|0
    end
    loop $continue|3
     block $break|3
      local.get $0
      local.get $4
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.tee $6
      i32.const 74
      i32.gt_u
      br_if $break|3
      local.get $12
      local.get $6
      call $~lib/array/Array<u8>#__get
      local.tee $2
      i32.const 16
      i32.ge_u
      br_if $break|3
      i32.const 0
      local.get $3
      i64.load
      local.tee $7
      i64.const 4
      i64.shl
      local.get $3
      i64.load offset=8
      i64.const 4
      i64.shl
      local.get $7
      i64.const 60
      i64.shr_u
      i64.or
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $8
      local.get $8
      local.set $10
      i32.const 0
      local.get $2
      i64.extend_i32_u
      i64.const 0
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $2
      i32.const 0
      local.get $10
      i64.load
      local.get $2
      i64.load
      i64.or
      local.get $10
      i64.load offset=8
      local.get $2
      i64.load offset=8
      i64.or
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $2
      local.get $2
      local.set $3
      local.get $4
      i32.const 1
      i32.add
      local.tee $4
      local.get $9
      i32.lt_s
      br_if $continue|3
     end
    end
    br $break|0
   end
   i32.const 0
   local.get $1
   i64.extend_i32_s
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.set $10
   loop $continue|4
    block $break|4
     local.get $0
     local.get $4
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.tee $8
     i32.const 74
     i32.gt_u
     br_if $break|4
     local.get $12
     local.get $8
     call $~lib/array/Array<u8>#__get
     local.tee $6
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     br_if $break|4
     i32.const 0
     local.get $3
     i64.load
     local.get $3
     i64.load offset=8
     local.get $10
     local.tee $2
     i64.load
     local.get $2
     i64.load offset=8
     call $~lib/bignum/globals/__multi3
     i32.const 0
     global.get $~lib/bignum/globals/__res128_lo
     global.get $~lib/bignum/globals/__res128_hi
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $2
     local.get $2
     local.set $2
     i32.const 0
     local.get $6
     i64.extend_i32_u
     i64.const 0
     call $~lib/bignum/integer/u128/u128#constructor
     local.tee $6
     i64.load
     local.tee $5
     local.get $2
     i64.load
     i64.add
     local.tee $7
     local.get $5
     i64.lt_u
     i64.extend_i32_u
     local.get $2
     i64.load offset=8
     local.get $6
     i64.load offset=8
     i64.add
     i64.add
     local.set $5
     i32.const 0
     local.get $7
     local.get $5
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $2
     local.get $2
     local.set $3
     local.get $4
     i32.const 1
     i32.add
     local.tee $4
     local.get $9
     i32.lt_s
     br_if $continue|4
    end
   end
  end
  local.get $11
  if (result i32)
   i32.const 0
   local.get $3
   i64.load
   i64.const -1
   i64.xor
   local.tee $5
   i64.const 1
   i64.add
   local.get $3
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
   call $~lib/bignum/integer/u128/u128#constructor
  else
   local.get $3
  end
 )
 (func $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj> (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $3
  if (result i32)
   local.get $3
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $3
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5448
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4464
   i32.const 421
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  call $~lib/bignum/utils/atou128
 )
 (func $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value> (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5080
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/near-runtime-ts/base64/base64.decode
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<~lib/typedarray/Uint8Array> (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Value>
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj> (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<~lib/typedarray/Uint8Array>
 )
 (func $nearFile/isReallyNullable<~lib/array/Array<u64>> (; 192 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<u64>#constructor (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<u64,nearFile/Value> (; 194 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i64.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<u64>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4720
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   return
  end
  local.get $2
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4720
   call $~lib/string/String.__concat
   i32.const 4744
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 398
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $~lib/array/Array<u64>#push (; 195 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
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
 (func $nearFile/decodeArray<u64> (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u64>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<u64,nearFile/Value>
    call $~lib/array/Array<u64>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj> (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5792
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<u64>
 )
 (func $assembly/model/FooBar#_decode (; 198 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.const 856
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 856
   call $nearFile/decode<i32,nearFile/Obj>
  else
   local.get $0
   i32.load
  end
  i32.store
  local.get $0
  local.get $1
  i32.const 2448
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2448
   call $nearFile/decode<u32,nearFile/Obj>
  else
   local.get $0
   i32.load offset=4
  end
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 2472
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 2472
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=8
  end
  i64.store offset=8
  local.get $0
  local.get $1
  i32.const 2504
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 2504
   call $nearFile/decode<u64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=16
  end
  i64.store offset=16
  local.get $0
  local.get $1
  i32.const 2536
  call $nearFile/Obj#has
  if (result i64)
   local.get $1
   i32.const 2536
   call $nearFile/decode<i64,nearFile/Obj>
  else
   local.get $0
   i64.load offset=24
  end
  i64.store offset=24
  local.get $0
  local.get $1
  i32.const 2568
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2568
   call $nearFile/decode<bool,nearFile/Obj>
  else
   local.get $0
   i32.load8_u offset=32
  end
  i32.store8 offset=32
  local.get $0
  local.tee $2
  local.get $1
  i32.const 2592
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2592
   call $nearFile/decode<~lib/string/String,nearFile/Obj>
  else
   local.get $0
   i32.load offset=36
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
  i32.const 2616
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2616
   call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj>
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
  i32.const 2656
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2656
   call $nearFile/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,nearFile/Obj>
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
  i32.const 2888
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2888
   call $nearFile/decode<~lib/array/Array<u32>,nearFile/Obj>
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
  i32.const 2920
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2920
   call $nearFile/decode<~lib/array/Array<i32>,nearFile/Obj>
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
  i32.const 2952
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 2952
   call $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj>
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
  i32.const 3192
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3192
   call $nearFile/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,nearFile/Obj>
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
  i32.const 3232
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 3232
   call $nearFile/decode<~lib/array/Array<u64>,nearFile/Obj>
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
 (func $assembly/model/FooBar#decode<nearFile/Obj> (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/model/FooBar#_decode
 )
 (func $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array> (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4384
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4384
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  local.get $0
  local.get $2
  call $assembly/model/FooBar#decode<nearFile/Obj>
 )
 (func $assembly/model/Nullables#constructor (; 201 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 32
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
 (func $assembly/model/Nullables#_encode (; 202 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 5912
  local.get $2
  call $nearFile/encode<~lib/string/String,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 5448
  local.get $2
  call $nearFile/encode<~lib/bignum/integer/u128/u128,nearFile/JSONEncoder>
  drop
  local.get $0
  i32.load offset=8
  i32.const 5936
  local.get $2
  call $nearFile/encode<~lib/typedarray/Uint8Array,nearFile/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $assembly/model/Nullables#_decode (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 5912
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5912
   call $nearFile/decode<~lib/string/String,nearFile/Obj>
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
  i32.const 5448
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5448
   call $nearFile/decode<~lib/bignum/integer/u128/u128,nearFile/Obj>
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
  i32.const 5936
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 5936
   call $nearFile/decode<~lib/typedarray/Uint8Array,nearFile/Obj>
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
 (func $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array> (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
   local.set $0
  end
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 5976
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/Nullables#constructor
  local.get $0
  call $assembly/model/Nullables#_decode
 )
 (func $nearFile/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<u64>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<u64,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $nearFile/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline (; 206 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
 )
 (func $nearFile/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 207 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5792
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<u64>
 )
 (func $nearFile/encode<i32,~lib/typedarray/Uint8Array>|trampoline (; 208 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
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
 (func $nearFile/decode<i32,~lib/typedarray/Uint8Array> (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<i32>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4616
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4616
   call $~lib/string/String.__concat
   i32.const 4640
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 403
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.load
  i32.wrap_i64
 )
 (func $nearFile/encode<i64,~lib/typedarray/Uint8Array>|trampoline (; 210 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
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
 (func $nearFile/decode<i64,~lib/typedarray/Uint8Array> (; 211 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i64.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<i64>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4888
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i64.const 0
   return
  end
  local.get $2
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4888
   call $~lib/string/String.__concat
   i32.const 4744
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 398
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline (; 212 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
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
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $nearFile/decode<~lib/string/String,~lib/typedarray/Uint8Array> (; 213 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4984
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 214 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $3
  i64.load offset=8
  i32.const 0
  local.tee $4
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $3
   i64.load
   local.get $4
   i64.load
   i64.eq
  else
   i32.const 0
  end
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
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline (; 215 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
 )
 (func $nearFile/decode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 216 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $nearFile/JSON.parse
  local.tee $0
  local.tee $3
  if (result i32)
   local.get $3
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
  else
   local.get $0
  end
  local.tee $3
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5448
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4464
   i32.const 421
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5016
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 345
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  call $~lib/bignum/utils/atou128
 )
 (func $assembly/test/runTest (; 217 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 560
  call $~lib/near-runtime-ts/logging/logging.log
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $0
  local.tee $2
  i32.const 2
  i32.const 2
  i32.const 10
  i32.const 832
  call $~lib/rt/__allocArray
  local.tee $1
  local.get $2
  i32.load offset=48
  i32.ne
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
  i32.const 856
  i32.store offset=36
  i32.const 880
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
  call $~lib/bignum/integer/u128/u128#constructor
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
  local.tee $2
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 8
  i32.const 1096
  call $~lib/rt/__allocArray
  i32.store
  local.get $1
  i32.const 1
  i32.const 2
  i32.const 8
  i32.const 1152
  call $~lib/rt/__allocArray
  i32.store offset=4
  local.get $1
  i32.load offset=44
  drop
  local.get $0
  local.get $2
  i32.store offset=44
  i32.const 0
  i32.const 2
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
  local.tee $1
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#set:length
  local.get $0
  i32.load offset=60
  drop
  local.get $0
  local.get $1
  i32.store offset=60
  local.get $0
  i32.load offset=60
  i32.const 0
  i32.const 880
  call $~lib/near-runtime-ts/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=60
  i32.const 1
  i32.const 880
  call $~lib/near-runtime-ts/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  i32.const 2
  i32.const 3
  i32.const 13
  i32.const 1224
  call $~lib/rt/__allocArray
  local.tee $1
  local.get $0
  i32.load offset=64
  i32.ne
  drop
  local.get $0
  local.get $1
  i32.store offset=64
  i32.const 1256
  local.get $0
  call $assembly/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log
  i32.const 5832
  local.get $0
  call $assembly/model/FooBar#encode
  i32.const 936
  call $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  local.tee $1
  call $assembly/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   i32.const 5864
   i32.const 37
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
   i32.const 5864
   i32.const 38
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
   i32.const 5864
   i32.const 39
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
   i32.const 5864
   i32.const 40
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
  i32.const 1064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 5864
   i32.const 41
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
   i32.const 5864
   i32.const 42
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
   i32.const 5864
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/Nullables#constructor
  i32.const 936
  i32.const 0
  call $assembly/model/Nullables#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  i32.const 936
  call $nearFile/decode<assembly/model/Nullables,~lib/typedarray/Uint8Array>
  local.tee $2
  i32.load
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 5864
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
  local.tee $1
  i64.load offset=8
  i32.const 8
  i64.load
  i64.eq
  if (result i32)
   local.get $1
   i64.load
   i32.const 0
   i64.load
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 5864
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  if
   i32.const 0
   i32.const 5864
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  i32.const 9
  i32.const 6016
  call $~lib/rt/__allocArray
  local.tee $2
  local.get $0
  i32.load offset=44
  i32.ne
  drop
  local.get $2
  i32.store offset=44
  local.get $1
  call $assembly/model/FooBar#encode
  i32.const 936
  call $nearFile/decode<assembly/model/FooBar,~lib/typedarray/Uint8Array>
  i32.load offset=44
  i32.load offset=12
  local.get $1
  i32.load offset=44
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 5864
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 13
  i32.const 6032
  call $~lib/rt/__allocArray
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
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
   i32.const 5864
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  i32.const 13
  i32.const 6056
  call $~lib/rt/__allocArray
  local.set $1
  i32.const 1
  global.set $~lib/argc
  local.get $1
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
  i32.load offset=12
  if
   i32.const 0
   i32.const 5864
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 42
  i32.const 936
  i32.const 0
  call $nearFile/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<i32,~lib/typedarray/Uint8Array>
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 5864
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i64.const 42
  i32.const 936
  i32.const 0
  call $nearFile/encode<i64,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<i64,~lib/typedarray/Uint8Array>
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 5864
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 6072
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<~lib/string/String,~lib/typedarray/Uint8Array>
  i32.const 6072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 6112
   i32.const 5864
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i64.const 42
  i64.const 42
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $1
  i32.const 1
  global.set $~lib/argc
  local.get $1
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  i32.const 936
  call $nearFile/decode<~lib/bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
  i64.load
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 5864
   i32.const 61
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6176
  call $~lib/near-runtime-ts/logging/logging.log
 )
 (func $nearFile/getInput (; 218 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i64)
  (local $1 i32)
  i64.const 0
  call $nearFile/input
  i64.const 0
  call $nearFile/register_len
  local.tee $0
  i64.const 4294967295
  i64.eq
  if
   call $nearFile/panic
  end
  i64.const 0
  i32.const 0
  local.get $0
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.load
  i64.extend_i32_u
  call $nearFile/read_register
  local.get $1
  call $nearFile/JSON.parse
 )
 (func $nearFile/isReallyNullable<~lib/array/Array<assembly/model/FooBar>> (; 219 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/array/Array<assembly/model/FooBar>#constructor (; 220 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Value> (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4384
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4384
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  local.get $0
  local.get $2
  call $assembly/model/FooBar#decode<nearFile/Obj>
 )
 (func $~lib/array/Array<assembly/model/FooBar>#push (; 222 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<assembly/model/FooBar> (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<assembly/model/FooBar,nearFile/Value>
    call $~lib/array/Array<assembly/model/FooBar>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Obj> (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 6248
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<assembly/model/FooBar>
 )
 (func $assembly/main/convertFoobars~anonymous|0 (; 225 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 4
  i32.const 33
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass> (; 226 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 34
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $4
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $2
  loop $loop|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $6
    local.get $3
    local.get $6
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
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
    call_indirect (type $FUNCSIG$iiii)
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<assembly/model/ContainerClass>#__get (; 227 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $nearFile/encode<assembly/model/FooBar,nearFile/JSONEncoder> (; 228 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/model/ContainerClass#_encode (; 229 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 6320
  local.get $2
  call $nearFile/encode<assembly/model/FooBar,nearFile/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array> (; 230 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $loop|0
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
     br $loop|0
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
 (func $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline (; 231 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>
 )
 (func $assembly/test/__wrapper_convertFoobars (; 232 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $nearFile/getInput
  i32.const 6216
  call $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Obj>
  i32.const 1
  call $~lib/array/Array<assembly/model/FooBar>#map<assembly/model/ContainerClass>
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/array/Array<assembly/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Obj> (; 233 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 5296
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<~lib/string/String>
 )
 (func $assembly/test/__wrapper_getStringArrayLength (; 234 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 6352
  call $nearFile/getInput
  i32.const 2656
  call $nearFile/decode<~lib/array/Array<~lib/string/String>,nearFile/Obj>
  local.tee $0
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  call $~lib/near-runtime-ts/logging/logging.log
  local.get $0
  i32.load offset=12
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $nearFile/decode<assembly/model/FooBar,nearFile/Obj> (; 235 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<assembly/model/FooBar>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 4384
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
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
   i32.const 24
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 4384
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  local.get $0
  local.get $2
  call $assembly/model/FooBar#decode<nearFile/Obj>
 )
 (func $assembly/model/ContainerClass#_decode (; 236 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6320
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 6320
   call $nearFile/decode<assembly/model/FooBar,nearFile/Obj>
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
 (func $nearFile/decode<assembly/model/ContainerClass,nearFile/Obj> (; 237 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
   local.set $0
  end
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 6456
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 33
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $assembly/model/ContainerClass#_decode
 )
 (func $assembly/model/AnotherContainerClass#constructor (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 36
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $assembly/main/rewrapFoobar (; 239 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $assembly/model/AnotherContainerClass#constructor
  local.tee $2
  i32.const 1
  i32.const 2
  i32.const 37
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $3
  i32.load offset=4
  local.tee $4
  i32.const 1
  i32.const 2
  i32.const 35
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
  local.tee $1
  local.get $4
  i32.load
  i32.ne
  drop
  local.get $1
  i32.store
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get (; 240 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<assembly/model/FooBar>#__get (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 952
   i32.const 1176
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
   i32.const 2704
   i32.const 1176
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $nearFile/encode<~lib/array/Array<assembly/model/FooBar>,nearFile/JSONEncoder> (; 242 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/model/FooBar>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<assembly/model/FooBar,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $nearFile/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/JSONEncoder> (; 243 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   i32.const 0
   local.set $1
   loop $loop|0
    block $break|0
     local.get $1
     local.get $0
     i32.load offset=12
     i32.ge_s
     br_if $break|0
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
     i32.const 0
     local.get $2
     call $nearFile/encode<~lib/array/Array<assembly/model/FooBar>,nearFile/JSONEncoder>
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
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
 (func $assembly/model/AnotherContainerClass#_encode (; 244 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $nearFile/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 6216
  local.get $2
  call $nearFile/encode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $nearFile/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline (; 245 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
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
 (func $assembly/test/__wrapper_rewrapFoobar (; 246 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $nearFile/getInput
  i32.const 6416
  call $nearFile/decode<assembly/model/ContainerClass,nearFile/Obj>
  call $assembly/main/rewrapFoobar
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<assembly/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor (; 247 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 37
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
 (func $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value> (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $nearFile/isReallyNullable<~lib/array/Array<assembly/model/FooBar>>
   i32.eqz
   if
    i32.const 4312
    local.get $1
    call $~lib/string/String.__concat
    i32.const 4344
    call $~lib/string/String.__concat
    i32.const 6248
    call $~lib/string/String.__concat
    i32.const 4416
    call $~lib/string/String.__concat
    i32.const 4464
    i32.const 381
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<assembly/model/FooBar>
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nearFile/decodeArray<~lib/array/Array<assembly/model/FooBar>> (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 26
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5224
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#constructor
  local.set $1
  local.get $0
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    local.get $2
    i32.load offset=12
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $2
    local.get $0
    call $~lib/array/Array<nearFile/Value>#__get
    i32.const 936
    call $nearFile/decode<~lib/array/Array<assembly/model/FooBar>,nearFile/Value>
    call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#push
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
 )
 (func $nearFile/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/Obj> (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $0
  else
   local.get $0
  end
  local.tee $2
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $nearFile/decodeArray<~lib/array/Array<assembly/model/FooBar>>
 )
 (func $assembly/model/AnotherContainerClass#_decode (; 252 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6216
  call $nearFile/Obj#has
  if (result i32)
   local.get $1
   i32.const 6216
   call $nearFile/decode<~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>,nearFile/Obj>
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
 (func $nearFile/decode<assembly/model/AnotherContainerClass,nearFile/Obj> (; 253 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $1
   i32.const 936
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   call $nearFile/Obj#get
   local.tee $2
   i32.eqz
   if
    i32.const 0
    return
   end
   local.get $2
   local.set $0
  end
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
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
   i32.const 4496
   local.get $1
   call $~lib/string/String.__concat
   i32.const 4344
   call $~lib/string/String.__concat
   i32.const 6504
   call $~lib/string/String.__concat
   i32.const 4544
   call $~lib/string/String.__concat
   i32.const 4464
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $assembly/model/AnotherContainerClass#constructor
  local.get $0
  call $assembly/model/AnotherContainerClass#_decode
 )
 (func $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline (; 254 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 936
    local.set $1
   end
   i32.const 0
   call $nearFile/JSONEncoder#constructor
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
 (func $assembly/test/__wrapper_unwrapFoobar (; 255 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $nearFile/getInput
  i32.const 6416
  call $nearFile/decode<assembly/model/AnotherContainerClass,nearFile/Obj>
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/FooBar>>#__get
  i32.const 0
  call $~lib/array/Array<assembly/model/FooBar>#__get
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $assembly/test/__wrapper_stringOrNull (; 256 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $assembly/test/__wrapper_stringAliasTest (; 257 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $nearFile/getInput
  i32.const 5912
  call $nearFile/decode<~lib/string/String,nearFile/Obj>
  i32.const 6680
  call $~lib/string/String.__concat
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $assembly/test/__wrapper_classOrNull (; 258 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $assembly/model/FooBar#constructor
  local.set $0
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 936
  i32.const 0
  call $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $assembly/test/__wrapper_classAndNull (; 259 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  i32.const 936
  i32.const 0
  call $nearFile/encode<assembly/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load
  i64.extend_i32_u
  call $nearFile/value_return
 )
 (func $start (; 260 ;) (type $FUNCSIG$v)
  i32.const 7008
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
  call $start:~lib/assemblyscript-json/decoder
  i32.const 0
  call $nearFile/Handler#constructor
  global.set $nearFile/JSON.handler
  i32.const 0
  global.get $nearFile/JSON.handler
  call $~lib/assemblyscript-json/decoder/JSONDecoder<nearFile/Handler>#constructor
  global.set $nearFile/JSON.decoder
 )
 (func $null (; 261 ;) (type $FUNCSIG$v)
 )
)
