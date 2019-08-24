(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vji (func (param i64 i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$jiii (func (param i32 i32 i32) (result i64)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__aspect" "getStackTrace" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace (result i32)))
 (import "__aspect" "reportTest" (func $../node_modules/@as-pect/assembly/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportDescribe" (func $../node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $../node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportActualBool" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool (param i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedBool" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool (param i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 32) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 64) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 96) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 120) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 144) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 216) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 360) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 384) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 416) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 440) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 464) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 488) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 512) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 536) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00R\00o\00u\00n\00d\00 \00T\00r\00i\00p\00")
 (data (i32.const 576) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00t\00u\00r\00n\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00T\00e\00x\00t\00M\00e\00s\00s\00a\00g\00e\00")
 (data (i32.const 664) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00m\00y\00s\00t\00e\00r\00i\00o\00u\00s\00S\00t\00r\00a\00n\00g\00e\00r\00")
 (data (i32.const 720) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00H\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 760) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 808) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 864) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 976) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1024) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1104) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1152) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1168) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 1192) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 1216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1240) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 1264) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1288) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 1312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1336) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 1360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1384) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 1408) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 1496) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1912) "\10\00\00\00\01\00\00\00\0b\00\00\00\10\00\00\00\e8\05\00\00\e8\05\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 1944) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 2032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2056) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2080) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00e\00n\00d\00e\00r\00")
 (data (i32.const 2112) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00e\00x\00t\00")
 (data (i32.const 2136) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 2168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 2192) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2240) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 2344) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 2400) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 2488) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00.\00t\00s\00")
 (data (i32.const 2544) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00o\00b\00j\00e\00c\00t\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 2608) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 2648) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 2728) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 2800) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 2824) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 2848) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 2872) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 2896) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 2920) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 2944) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 3000) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 3080) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 3120) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 3184) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 3208) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00a\00r\00r\00a\00y\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3272) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 3296) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 3360) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3424) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00 \00:\00 \00\"\00")
 (data (i32.const 3448) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 3488) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 3512) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00b\00o\00o\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3576) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00:\00 \00")
 (data (i32.const 3600) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 3624) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00t\00e\00g\00e\00r\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3696) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3760) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 3816) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00I\00n\00c\00o\00r\00r\00e\00c\00t\00 \00d\00a\00t\00a\00 \00v\00a\00l\00u\00e\00 \00(\00s\00e\00n\00d\00e\00r\00)\00 \00f\00o\00r\00 \00r\00e\00t\00r\00i\00e\00v\00e\00d\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 3936) "\90\00\00\00\01\00\00\00\01\00\00\00\90\00\00\00.\00.\00/\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 4096) "`\00\00\00\01\00\00\00\01\00\00\00`\00\00\00I\00n\00c\00o\00r\00r\00e\00c\00t\00 \00d\00a\00t\00a\00 \00v\00a\00l\00u\00e\00 \00(\00t\00e\00x\00t\00)\00 \00f\00o\00r\00 \00r\00e\00t\00r\00i\00e\00v\00e\00d\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 4208) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00I\00n\00c\00o\00r\00r\00e\00c\00t\00 \00d\00a\00t\00a\00 \00v\00a\00l\00u\00e\00 \00(\00n\00u\00m\00b\00e\00r\00)\00 \00f\00o\00r\00 \00r\00e\00t\00r\00i\00e\00v\00e\00d\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 4328) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00s\00h\00o\00u\00l\00d\00 \00h\00a\00n\00d\00l\00e\00 \00g\00e\00n\00e\00r\00i\00c\00s\00")
 (data (i32.const 4392) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (data (i32.const 4448) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00t\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 4504) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00t\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00o\00o\00l\00e\00a\00n\00")
 (data (i32.const 4560) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00s\00t\00a\00n\00t\00i\00a\00t\00e\00d\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 4616) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00s\00t\00a\00r\00t\00s\00 \00w\00i\00t\00h\00 \00a\00 \00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00z\00e\00r\00o\00")
 (data (i32.const 4688) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00c\00a\00n\00 \00h\00a\00v\00e\00 \00a\00n\00 \00i\00t\00e\00m\00 \00a\00d\00d\00e\00d\00 \00t\00o\00 \00i\00t\00")
 (data (i32.const 4760) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00G\00e\00n\00e\00r\00i\00c\00 \00c\00l\00a\00s\00s\00e\00s\00")
 (data (i32.const 4808) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00c\00a\00n\00 \00u\00s\00e\00 \00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00")
 (data (i32.const 4864) "*\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\0c\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 10 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/roundtrip.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/roundtrip.spec~anonymous|0~anonymous|1 $start:assembly/__tests__/roundtrip.spec~anonymous|0 $start:../node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 $start:assembly/__tests__/roundtrip.spec~anonymous|1~anonymous|0 $start:assembly/__tests__/roundtrip.spec~anonymous|1~anonymous|1 $start:assembly/__tests__/roundtrip.spec~anonymous|1 $start:assembly/__tests__/roundtrip.spec~anonymous|2~anonymous|0 $start:assembly/__tests__/roundtrip.spec~anonymous|2)
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
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 376))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 400))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 432))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.String (mut i32) (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.Boolean (mut i32) (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.U64 (mut i32) (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.I64 (mut i32) (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.U32 (mut i32) (i32.const 0))
 (global $~lib/nearEntry/PrimitiveHandler.I32 (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float (mut f64) (f64.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float (mut f64) (f64.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 4))
 (global $assembly/__tests__/roundtrip.spec/Foo_ID i32 (i32.const 36))
 (global $assembly/__tests__/roundtrip.spec/Generic_i32_ID i32 (i32.const 37))
 (global $assembly/__tests__/roundtrip.spec/Generic_Foo_ID i32 (i32.const 38))
 (global $../node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $../node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4864))
 (global $~lib/heap/__heap_base i32 (i32.const 5204))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Foo_ID" (global $assembly/__tests__/roundtrip.spec/Foo_ID))
 (export "Generic_i32_ID" (global $assembly/__tests__/roundtrip.spec/Generic_i32_ID))
 (export "Generic_Foo_ID" (global $assembly/__tests__/roundtrip.spec/Generic_Foo_ID))
 (export "__ready" (func $../node_modules/@as-pect/assembly/assembly/index/__ready))
 (export "__call" (func $../node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (export "__sendActual" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual))
 (export "__sendExpected" (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected))
 (export "__ignoreLogs" (func $../node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $../node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $../node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup))
 (func $~lib/rt/stub/__alloc (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
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
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
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
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 29 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:~lib/near-runtime-ts/index (; 30 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $0
  end
  local.get $0
  global.set $~lib/near-runtime-ts/storage/storage
  i32.const 0
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
   local.set $2
  end
  local.get $2
  global.set $~lib/near-runtime-ts/contract/context
 )
 (func $~lib/string/String#get:length (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:~lib/assemblyscript-json/decoder (; 33 ;) (type $FUNCSIG$v)
  i32.const 456
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 528
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $assembly/model/TextMessage#constructor (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 6
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/util/_testTextMessage (; 35 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  call $assembly/model/TextMessage#constructor
  local.set $0
  local.get $0
  local.tee $1
  i32.const 680
  local.tee $2
  local.get $1
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $2
   local.set $3
   local.get $3
   drop
   local.get $1
   local.set $4
   nop
  end
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 736
  local.tee $1
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $1
  i32.store offset=4
  local.get $0
  i64.const 415
  i64.store offset=8
  local.get $0
 )
 (func $~lib/memory/memory.fill (; 36 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 776
   i32.const 824
   i32.const 14
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
   local.set $6
   local.get $6
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
   local.set $7
   local.get $7
   drop
   local.get $4
   local.set $8
   nop
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
 (func $~lib/array/Array<i32>#constructor (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 9
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
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
 (func $~lib/array/Array<~lib/string/String>#constructor (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 10
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 880
   i32.const 992
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/util/memory/memcpy (; 40 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 41 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/stub/__realloc (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.set $4
   local.get $4
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $4
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/array/ensureSize (; 43 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    i32.const 776
    i32.const 992
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
    local.set $7
    local.get $7
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
 (func $~lib/array/Array<i32>#push (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 8
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
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
  local.set $4
  nop
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
  local.set $5
  nop
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
 )
 (func $~lib/array/Array<i32>#__get (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1040
   i32.const 992
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  local.get $2
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  local.set $5
  local.get $5
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
  local.set $6
  local.get $6
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  local.set $7
  nop
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 48 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.set $2
  local.get $2
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  local.set $3
  nop
 )
 (func $~lib/array/Array<i32>#__set (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.set $4
  local.get $1
  local.set $5
  local.get $2
  local.set $6
  local.get $4
  i32.load offset=4
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $~lib/util/string/compareImpl (; 50 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $9
  local.get $9
  drop
  local.get $2
  local.set $10
  local.get $10
  drop
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.set $8
  local.get $0
  local.set $11
  nop
  local.get $2
  local.set $12
  nop
  local.get $8
 )
 (func $~lib/string/String.__eq (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  local.set $4
  local.get $4
  drop
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   local.set $6
   nop
   local.get $1
   local.set $7
   nop
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
   local.set $8
   nop
   local.get $1
   local.set $9
   nop
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
   local.set $10
   nop
   local.get $1
   local.set $11
   nop
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
  local.set $12
  nop
  local.get $1
  local.set $13
  nop
  local.get $2
 )
 (func $~lib/string/String.__ne (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $2
 )
 (func $~lib/string/String#substring (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 1168
   local.set $11
   local.get $11
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
   local.set $12
   local.get $12
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
  local.set $13
  local.get $13
 )
 (func $~lib/util/number/decimalCount32 (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 1928
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
 (func $~lib/util/number/itoa32 (; 56 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.eqz
  if
   i32.const 456
   local.set $7
   local.get $7
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
  local.set $8
  local.get $8
 )
 (func $~lib/number/I32#toString (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/number/itoa<i32> (result i32)
   local.get $0
   local.set $3
   local.get $3
   call $~lib/util/number/itoa32
   br $__inlined_func$~lib/util/number/itoa<i32>
  end
  local.tee $1
  local.set $4
  local.get $4
  local.set $2
  local.get $1
  local.set $5
  nop
  local.get $2
 )
 (func $~lib/string/String#concat (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  local.set $8
  local.get $8
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 432
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    local.set $9
    local.get $9
    drop
    local.get $3
    local.set $10
    nop
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
   i32.const 1168
   local.set $11
   local.get $11
   local.set $2
   local.get $1
   local.set $12
   nop
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $13
  local.get $13
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
  local.set $14
  nop
  local.get $2
 )
 (func $~lib/string/String.__concat (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.const 432
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 60 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  local.set $9
  local.get $9
  drop
  local.get $0
  i32.const 1120
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
     i32.const 1120
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $5
    if (result i32)
     local.get $5
    else     
     local.get $4
     i32.const 1144
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
     i32.const 1120
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 1184
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else      
      local.get $4
      i32.const 1144
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 1208
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else       
       local.get $4
       i32.const 1232
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 1256
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else        
        local.get $4
        i32.const 1280
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 1304
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else         
         local.get $4
         i32.const 1328
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 1352
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else          
          local.get $4
          i32.const 1376
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 1400
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else           
           i32.const 0
           i32.eqz
           if
            i32.const 1424
            local.get $4
            call $~lib/number/I32#toString
            local.tee $7
            call $~lib/string/String.__concat
            local.tee $8
            i32.const 1960
            i32.const 108
            i32.const 20
            call $~lib/builtins/abort
            unreachable
           end
           local.get $7
           local.set $10
           nop
           local.get $8
           local.set $11
           nop
          end
         end
        end
       end
      end
     end
     local.get $6
     local.set $12
     nop
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
  i32.const 1120
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $5
  local.set $13
  nop
  local.get $1
  local.set $14
  nop
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 61 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.load
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1096
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  else   
   local.get $0
   i32.load
   local.get $0
   i32.load
   local.set $4
   local.get $4
   i32.load offset=12
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
   i32.const 2048
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  local.set $5
  nop
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2072
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
  local.set $2
  local.get $1
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 13
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $0
  end
  local.get $0
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 12
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
   local.set $2
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<~lib/string/String>>#constructor (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 15
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<~lib/string/String>#constructor (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 14
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<~lib/string/String>>#constructor
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $4
  nop
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<bool>>#constructor (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 18
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<bool>#constructor (; 67 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 17
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<bool>>#constructor
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $4
  nop
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#constructor (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 20
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<u64>#constructor (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 19
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  local.set $4
  nop
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<i64>>#constructor (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 22
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<i64>#constructor (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 21
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<i64>>#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  local.set $4
  nop
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u32>>#constructor (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 24
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<u32>#constructor (; 73 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 23
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u32>>#constructor
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $4
  nop
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<i32>>#constructor (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 26
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/nearEntry/PrimitiveHandler<i32>#constructor (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 8
   i32.const 25
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<i32>>#constructor
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $4
  nop
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $start:~lib/nearEntry (; 76 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<~lib/string/String>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.String
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<bool>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.Boolean
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<u64>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.U64
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<i64>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.I64
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<u32>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.U32
  i32.const 0
  call $~lib/nearEntry/PrimitiveHandler<i32>#constructor
  global.set $~lib/nearEntry/PrimitiveHandler.I32
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 77 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.set $2
  local.get $2
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 432
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $1
  local.set $3
  nop
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 78 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $2
  local.set $4
  local.get $4
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  local.get $1
  local.set $5
  nop
  local.get $2
  local.set $6
  nop
 )
 (func $~lib/nearEntry/encode<~lib/string/String> (; 79 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if
   local.get $0
   local.get $2
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  else   
   local.get $0
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  end
  local.get $0
  local.set $3
  local.get $1
  local.set $7
  nop
  local.get $2
  local.set $8
  nop
  local.get $3
 )
 (func $~lib/util/number/decimalCount64 (; 80 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 81 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 1928
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
 (func $~lib/util/number/utoa64 (; 82 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i64.eqz
  if
   i32.const 456
   local.set $8
   local.get $8
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
  local.set $9
  local.get $9
 )
 (func $~lib/number/U64#toString (; 83 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/number/itoa<u64> (result i32)
   local.get $0
   local.set $3
   local.get $3
   call $~lib/util/number/utoa64
   br $__inlined_func$~lib/util/number/itoa<u64>
  end
  local.tee $1
  local.set $4
  local.get $4
  local.set $2
  local.get $1
  local.set $5
  nop
  local.get $2
 )
 (func $~lib/nearEntry/encode<u64> (; 84 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  local.get $2
  local.set $5
  local.get $5
  drop
  local.get $0
  local.get $2
  local.get $1
  call $~lib/number/U64#toString
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $3
  local.set $6
  nop
  local.get $0
  local.set $3
  local.get $2
  local.set $7
  nop
  local.get $3
 )
 (func $~lib/array/Array<i32>#pop (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2208
   i32.const 992
   i32.const 287
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 86 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2184
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $assembly/model/TextMessage#encode (; 87 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
  drop
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   local.set $7
   local.get $7
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
  local.set $8
  local.get $8
  local.set $3
  local.get $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $3
  local.get $0
  i32.load
  i32.const 2096
  call $~lib/nearEntry/encode<~lib/string/String>
  local.set $9
  nop
  local.get $3
  local.get $0
  i32.load offset=4
  i32.const 2128
  call $~lib/nearEntry/encode<~lib/string/String>
  local.set $10
  nop
  local.get $3
  local.get $0
  i64.load offset=8
  i32.const 2152
  call $~lib/nearEntry/encode<u64>
  local.set $11
  nop
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  local.set $12
  nop
  local.get $2
  local.set $13
  nop
  local.get $4
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  local.set $13
  local.get $13
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1168
   local.set $14
   local.get $14
   local.set $3
   local.get $1
   local.set $15
   nop
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   local.set $16
   local.get $16
   local.set $3
   local.get $1
   local.set $17
   nop
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $3
   local.get $2
   i32.const 1
   i32.add
   local.set $8
   loop $loop|0
    local.get $3
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
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
     local.set $18
     local.get $18
     drop
     local.get $10
     local.set $19
     nop
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
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.set $11
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $20
  local.get $20
  local.set $12
  block $break|1
   i32.const 0
   local.set $8
   loop $loop|1
    local.get $8
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $4
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $7
    local.tee $3
    i32.ne
    if
     local.get $10
     local.set $21
     local.get $21
     drop
     local.get $3
     local.set $22
     nop
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
     local.get $1
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
  local.get $4
  local.get $2
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
   local.set $23
   local.get $23
   drop
   local.get $8
   local.set $24
   nop
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
  local.get $1
  local.set $25
  nop
  local.get $7
  local.set $26
  nop
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  local.set $2
  local.get $1
  local.set $4
  nop
  local.get $2
  return
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 90 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 7
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/string/String.UTF8.byteLength (; 91 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $6
  local.get $6
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
  local.set $7
  nop
  local.get $5
 )
 (func $~lib/string/String.UTF8.encode (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  local.set $8
  local.get $8
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
    i32.const 2256
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
    i32.const 2256
    i32.const 571
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  local.set $9
  local.get $9
  local.set $6
  local.get $0
  local.set $10
  nop
  local.get $6
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.getPtr (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $0
  local.set $3
  nop
  local.get $1
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 94 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $5
  local.get $5
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
  local.set $6
  nop
  local.get $0
  local.set $7
  nop
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 95 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=4
  i32.const 1168
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $1
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $2
  local.get $1
  local.set $4
  nop
  local.get $2
 )
 (func $assembly/model/__near_JSONHandler_TextMessage#constructor (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 27
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store offset=12
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#constructor (; 97 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 28
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $2
  local.get $2
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 16
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
   local.set $0
  end
  local.get $0
  i32.const 1168
  local.set $4
  local.get $4
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  local.set $5
  local.get $5
  i32.store offset=8
  local.get $1
  local.set $6
  nop
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#__get (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1040
   i32.const 2304
   i32.const 135
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar (; 101 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#isWhitespace (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar (; 103 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2360
   i32.const 2416
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace (; 104 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject (; 105 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 2560
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2416
   i32.const 58
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $2
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $3
 )
 (func $assembly/model/__near_JSONHandler_TextMessage#pushObject (; 106 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2504
    i32.const 38
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   local.set $4
   nop
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2504
    i32.const 42
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  local.set $5
  nop
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 107 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
   i32.const 2256
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
  local.set $9
  local.get $9
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.readString (; 108 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.set $4
  local.get $4
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
  local.set $5
  nop
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 109 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load offset=8
  local.get $4
  local.get $5
  i32.const 1
  i32.sub
  call $~lib/assemblyscript-json/util/index/Buffer.readString
 )
 (func $~lib/rt/__allocArray (; 110 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  local.set $7
  local.get $7
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readHexDigit (; 111 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
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
  i32.const 9
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
  local.set $5
  local.get $5
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
   i32.const 2960
   i32.const 2416
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  local.set $6
  nop
  local.get $3
 )
 (func $~lib/string/String.fromCodePoint (; 112 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1114111
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 2256
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
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.add
   local.set $3
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.add
   local.set $4
   local.get $2
   local.get $3
   i32.const 16
   i32.shl
   local.get $4
   i32.or
   i32.store
  end
  local.get $2
  local.set $5
  local.get $5
 )
 (func $~lib/string/String.fromCharCode (; 113 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  local.set $4
  local.get $4
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 114 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readEscapedChar (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
  local.set $1
  local.get $1
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1120
   local.set $7
   local.get $7
   return
  end
  local.get $1
  i32.const 1144
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1144
   local.set $8
   local.get $8
   return
  end
  local.get $1
  i32.const 2816
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2816
   local.set $9
   local.get $9
   return
  end
  local.get $1
  i32.const 2840
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1232
   local.set $10
   local.get $10
   return
  end
  local.get $1
  i32.const 2864
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1280
   local.set $11
   local.get $11
   return
  end
  local.get $1
  i32.const 2888
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1328
   local.set $12
   local.get $12
   return
  end
  local.get $1
  i32.const 2912
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1376
   local.set $13
   local.get $13
   return
  end
  local.get $1
  i32.const 2936
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readHexDigit
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
   i32.const 3016
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2416
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  local.set $14
  local.get $14
  local.set $4
  local.get $6
  local.set $15
  nop
  local.get $5
  local.set $16
  nop
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readString (; 116 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2664
   i32.const 2416
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2744
    i32.const 2416
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1120
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
    local.set $6
    local.get $6
    i32.load offset=12
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     local.set $7
     nop
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 1168
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    local.set $8
    nop
    local.get $2
    local.set $9
    nop
    local.get $5
    return
   else    
    local.get $3
    i32.const 1144
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
      local.set $10
      nop
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     local.set $11
     nop
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseKey (; 117 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readString
  local.set $2
  local.get $1
  i32.load
  local.set $3
  nop
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
  i32.const 2048
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3096
   i32.const 2416
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseObject (; 118 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 2072
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $assembly/model/__near_JSONHandler_TextMessage#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
     i32.const 2184
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   i32.const 2184
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3136
    i32.const 2416
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray (; 119 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3224
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2416
   i32.const 53
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $2
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $3
 )
 (func $assembly/model/__near_JSONHandler_TextMessage#pushArray (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseArray (; 121 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 3200
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $assembly/model/__near_JSONHandler_TextMessage#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
     i32.const 3288
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   i32.const 3288
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3312
    i32.const 2416
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $~lib/util/string/isSpace (; 122 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.le_s
  if
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
           i32.const 9
           i32.eq
           br_if $case0|0
           local.get $1
           i32.const 10
           i32.eq
           br_if $case1|0
           local.get $1
           i32.const 11
           i32.eq
           br_if $case2|0
           local.get $1
           i32.const 12
           i32.eq
           br_if $case3|0
           local.get $1
           i32.const 13
           i32.eq
           br_if $case4|0
           local.get $1
           i32.const 32
           i32.eq
           br_if $case5|0
           local.get $1
           i32.const 160
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
   return
  end
  local.get $0
  i32.const 8192
  i32.ge_s
  if (result i32)
   local.get $0
   i32.const 8202
   i32.le_s
  else   
   i32.const 0
  end
  if
   i32.const 1
   return
  end
  block $break|1
   block $case6|1
    block $case5|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $case0|1
          local.get $0
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|1
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|1
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|1
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|1
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|1
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|1
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|1
          br $break|1
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
 (func $~lib/util/string/strtol<i64> (; 123 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $9
  local.get $9
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
   local.set $10
   nop
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
    local.set $11
    nop
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
     local.set $12
     nop
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
     block $case6|1
      block $case5|1
       block $case4|1
        block $case3|1
         block $case2|1
          block $case1|1
           block $case0|1
            local.get $4
            i32.const 2
            i32.add
            i32.load16_u
            local.set $7
            local.get $7
            i32.const 66
            i32.eq
            br_if $case0|1
            local.get $7
            i32.const 98
            i32.eq
            br_if $case1|1
            local.get $7
            i32.const 79
            i32.eq
            br_if $case2|1
            local.get $7
            i32.const 111
            i32.eq
            br_if $case3|1
            local.get $7
            i32.const 88
            i32.eq
            br_if $case4|1
            local.get $7
            i32.const 120
            i32.eq
            br_if $case5|1
            br $case6|1
           end
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
    local.set $13
    nop
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
    i32.ge_s
    if (result i32)
     local.get $5
     i32.const 57
     i32.le_s
    else     
     i32.const 0
    end
    if
     local.get $5
     i32.const 48
     i32.sub
     local.set $5
    else     
     local.get $5
     i32.const 65
     i32.ge_s
     if (result i32)
      local.get $5
      i32.const 90
      i32.le_s
     else      
      i32.const 0
     end
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
      i32.ge_s
      if (result i32)
       local.get $5
       i32.const 122
       i32.le_s
      else       
       i32.const 0
      end
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
    i32.ge_s
    if
     br $break|2
    end
    local.get $8
    local.get $1
    i64.extend_i32_s
    i64.mul
    local.get $5
    i64.extend_i32_s
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
  local.set $14
  nop
  local.get $3
 )
 (func $~lib/number/U64.parseInt (; 124 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString (; 125 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $1
  local.set $7
  local.get $7
  drop
  local.get $2
  local.set $8
  local.get $8
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 3440
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 1120
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2416
   i32.const 36
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.set $9
  nop
  local.get $4
  local.set $10
  nop
  local.get $5
  local.set $11
  nop
  local.get $6
  local.set $12
  nop
  local.get $1
  local.set $13
  nop
  local.get $2
  local.set $14
  nop
 )
 (func $assembly/model/__near_JSONHandler_TextMessage#setString (; 126 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
  drop
  local.get $1
  i32.const 2096
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $4
    local.set $7
    local.get $7
    drop
    local.get $3
    local.set $8
    nop
   end
   local.get $4
   i32.store
   local.get $1
   local.set $9
   nop
   local.get $2
   local.set $10
   nop
   return
  end
  local.get $1
  i32.const 2128
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   local.tee $3
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.ne
   if
    local.get $3
    local.set $11
    local.get $11
    drop
    local.get $4
    local.set $12
    nop
   end
   local.get $3
   i32.store offset=4
   local.get $1
   local.set $13
   nop
   local.get $2
   local.set $14
   nop
   return
  end
  local.get $1
  i32.const 2152
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 0
   call $~lib/number/U64.parseInt
   i64.store offset=8
   local.get $1
   local.set $15
   nop
   local.get $2
   local.set $16
   nop
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  local.get $1
  local.set $17
  nop
  local.get $2
  local.set $18
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseString (; 127 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 1120
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readString
  local.tee $1
  call $assembly/model/__near_JSONHandler_TextMessage#setString
  i32.const 1
  local.set $2
  local.get $1
  local.set $3
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readAndAssert (; 128 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $5
  local.get $5
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3464
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3504
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2416
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
    local.set $6
    nop
    local.get $4
    local.set $7
    nop
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $8
  nop
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean (; 129 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $1
  local.set $8
  local.get $8
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3528
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 3592
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   if (result i32)
    i32.const 376
    local.set $9
    local.get $9
    local.tee $5
   else    
    i32.const 400
    local.set $10
    local.get $10
    local.tee $6
   end
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2416
   i32.const 40
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.set $11
  nop
  local.get $4
  local.set $12
  nop
  local.get $7
  local.set $13
  nop
  local.get $1
  local.set $14
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseBoolean (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 400
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 376
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/number/itoa64 (; 131 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i64.eqz
  if
   i32.const 456
   local.set $9
   local.get $9
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
  local.set $10
  local.get $10
 )
 (func $~lib/number/I64#toString (; 132 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/number/itoa<i64> (result i32)
   local.get $0
   local.set $3
   local.get $3
   call $~lib/util/number/itoa64
   br $__inlined_func$~lib/util/number/itoa<i64>
  end
  local.tee $1
  local.set $4
  local.get $4
  local.set $2
  local.get $1
  local.set $5
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger (; 133 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
  local.set $7
  local.get $7
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3640
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 3592
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/number/I64#toString
   local.tee $5
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2416
   i32.const 49
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.set $8
  nop
  local.get $4
  local.set $9
  nop
  local.get $5
  local.set $10
  nop
  local.get $6
  local.set $11
  nop
  local.get $1
  local.set $12
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseNumber (; 134 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 3616
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readChar
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
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull (; 135 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3712
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2416
   i32.const 44
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $4
  nop
  local.get $1
  local.set $5
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseNull (; 136 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#peekChar
  i32.const 432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#readAndAssert
   local.get $0
   i32.load
   local.set $1
   local.get $0
   i32.load offset=4
   i32.load
   local.set $2
   i32.const 0
   local.set $3
   i32.const 0
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   drop
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
   local.get $2
   local.set $4
   nop
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseValue (; 137 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#deserialize (; 138 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
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
    local.set $7
    local.get $7
    drop
    local.get $3
    local.set $8
    nop
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
   local.set $9
   nop
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3776
   i32.const 2416
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $10
  nop
  local.get $2
  local.set $11
  nop
 )
 (func $assembly/model/TextMessage#decode (; 139 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  local.set $7
  local.get $7
  drop
  local.get $2
  local.set $8
  local.get $8
  drop
  i32.const 0
  local.get $0
  call $assembly/model/__near_JSONHandler_TextMessage#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   local.set $9
   local.get $9
   drop
   local.get $4
   local.set $10
   nop
  end
  local.get $5
  i32.store
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#constructor
  local.set $5
  local.get $3
  local.tee $4
  local.get $5
  local.tee $6
  local.get $4
  i32.load offset=4
  local.tee $4
  i32.ne
  if
   local.get $6
   local.set $11
   local.get $11
   drop
   local.get $4
   local.set $12
   nop
  end
  local.get $6
  i32.store offset=4
  local.get $5
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/model/__near_JSONHandler_TextMessage>#deserialize
  local.get $0
  local.set $13
  local.get $13
  local.set $6
  local.get $3
  local.set $14
  nop
  local.get $5
  local.set $15
  nop
  local.get $1
  local.set $16
  nop
  local.get $2
  local.set $17
  nop
  local.get $6
 )
 (func $~lib/near-runtime-ts/util/util.parseFromBytes<assembly/model/TextMessage> (; 140 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  i32.const 0
  call $assembly/model/TextMessage#constructor
  local.tee $1
  local.set $5
  local.get $5
  local.set $2
  local.get $2
  local.get $0
  i32.const 0
  call $assembly/model/TextMessage#decode
  local.set $3
  local.get $1
  local.set $6
  nop
  local.get $2
  local.set $7
  nop
  local.get $0
  local.set $8
  nop
  local.get $3
  return
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 29
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store offset=4
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String> (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  i32.const 0
  local.get $0
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor
  local.set $1
  local.get $0
  local.set $3
  nop
  local.get $1
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<~lib/string/String> (; 143 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  local.get $0
  local.set $1
  local.get $1
  local.set $3
  local.get $3
  drop
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
  if
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   local.set $4
   nop
  end
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
  i32.const 5
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  local.set $5
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<~lib/string/String> (; 144 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   local.get $0
   local.set $4
   nop
   return
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  local.get $0
  local.set $2
  local.get $2
  local.set $5
  local.get $5
  drop
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
  if
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   local.set $6
   nop
  end
  local.get $2
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  i32.const 1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
  i32.const 5
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  local.set $7
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear (; 145 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
   if
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
    local.set $0
    nop
   end
   i32.const 0
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   i32.const 0
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
  end
  i32.const -1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear (; 146 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  i32.const 0
  i32.eq
  if
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
   if
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
    local.set $0
    nop
   end
   i32.const 0
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   i32.const 0
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
  end
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toStrictEqual (; 147 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  local.get $1
  local.set $18
  local.get $18
  drop
  local.get $2
  local.set $19
  local.get $19
  drop
  block $../node_modules/@as-pect/assembly/assembly/internal/comparison/blockComparison/blockComparison<~lib/string/String>|inlined.0
   local.get $0
   i32.load offset=4
   local.set $20
   local.get $20
   local.set $6
   local.get $1
   local.set $21
   local.get $21
   local.set $5
   local.get $0
   i32.load
   local.set $4
   local.get $2
   local.set $22
   local.get $22
   local.set $3
   local.get $6
   local.get $5
   i32.eq
   if
    local.get $6
    local.set $23
    local.get $23
    local.set $10
    local.get $5
    local.set $24
    local.get $24
    local.set $9
    local.get $4
    local.set $8
    local.get $3
    local.set $25
    local.get $25
    local.set $7
    local.get $10
    call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<~lib/string/String>
    local.get $9
    local.get $8
    call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<~lib/string/String>
    local.get $8
    local.get $9
    local.get $10
    call $~lib/string/String.__eq
    i32.xor
    local.set $12
    local.get $7
    local.set $26
    local.get $26
    local.set $11
    local.get $12
    i32.eqz
    if
     local.get $11
     local.set $27
     nop
     local.get $11
     i32.const 3952
     i32.const 11
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $11
    local.set $28
    nop
    local.get $7
    local.set $29
    nop
    local.get $9
    local.set $30
    nop
    local.get $10
    local.set $31
    nop
    local.get $3
    local.set $32
    nop
    local.get $5
    local.set $33
    nop
    local.get $6
    local.set $34
    nop
    br $../node_modules/@as-pect/assembly/assembly/internal/comparison/blockComparison/blockComparison<~lib/string/String>|inlined.0
   end
   local.get $5
   local.set $10
   local.get $6
   local.set $9
   local.get $10
   i32.const 16
   i32.sub
   i32.load offset=12
   local.set $8
   local.get $9
   i32.const 16
   i32.sub
   i32.load offset=12
   local.set $7
   local.get $10
   local.set $13
   local.get $8
   local.set $12
   local.get $4
   local.set $11
   i32.const 4
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
   local.get $13
   local.set $35
   local.get $35
   drop
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
   if
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
    local.set $36
    nop
   end
   local.get $13
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   local.get $12
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset
   local.get $11
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
   i32.const 1
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.isManaged
   local.get $9
   local.set $12
   local.get $7
   local.set $11
   i32.const 4
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
   local.get $12
   local.set $37
   local.get $37
   drop
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
   if
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
    local.set $38
    nop
   end
   local.get $12
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   local.get $11
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset
   i32.const 1
   global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
   local.get $7
   local.get $8
   i32.eq
   local.set $12
   local.get $12
   i32.eqz
   if
    local.get $4
    local.set $11
    local.get $3
    local.set $39
    local.get $39
    local.set $13
    local.get $11
    i32.eqz
    if
     local.get $13
     local.set $40
     nop
     local.get $13
     i32.const 3952
     i32.const 11
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $13
    local.set $41
    nop
   else    
    local.get $9
    local.set $14
    local.get $10
    local.set $11
    local.get $7
    local.set $13
    block $~lib/util/memory/memcmp|inlined.0 (result i32)
     local.get $14
     local.set $17
     local.get $11
     local.set $16
     local.get $13
     local.set $15
     local.get $17
     local.get $16
     i32.eq
     if
      i32.const 0
      br $~lib/util/memory/memcmp|inlined.0
     end
     block $break|0
      loop $continue|0
       local.get $15
       i32.const 0
       i32.ne
       if (result i32)
        local.get $17
        i32.load8_u
        local.get $16
        i32.load8_u
        i32.eq
       else        
        i32.const 0
       end
       i32.eqz
       br_if $break|0
       local.get $15
       i32.const 1
       i32.sub
       local.set $15
       local.get $17
       i32.const 1
       i32.add
       local.set $17
       local.get $16
       i32.const 1
       i32.add
       local.set $16
       br $continue|0
      end
      unreachable
     end
     local.get $15
     if (result i32)
      local.get $17
      i32.load8_u
      local.get $16
      i32.load8_u
      i32.sub
     else      
      i32.const 0
     end
    end
    i32.const 0
    i32.eq
    local.set $14
    local.get $4
    local.get $14
    i32.xor
    local.set $16
    local.get $3
    local.set $42
    local.get $42
    local.set $15
    local.get $16
    i32.eqz
    if
     local.get $15
     local.set $43
     nop
     local.get $15
     i32.const 3952
     i32.const 11
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $15
    local.set $44
    nop
   end
   local.get $3
   local.set $45
   nop
   local.get $5
   local.set $46
   nop
   local.get $6
   local.set $47
   nop
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $1
  local.set $48
  nop
  local.get $2
  local.set $49
  nop
  return
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64>#constructor (; 148 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 30
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store offset=8
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Box/Box<u64>#constructor (; 149 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 31
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<u64> (; 150 ;) (type $FUNCSIG$vj) (param $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  i32.const 10
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  drop
  i32.const 0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
  i32.const 0
  local.get $0
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Box/Box<u64>#constructor
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  local.set $3
  local.get $3
  drop
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  local.set $4
  nop
  local.get $2
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.isManaged
  local.get $1
  local.set $5
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<u64> (; 151 ;) (type $FUNCSIG$vji) (param $0 i64) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   return
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  i32.const 10
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  drop
  i32.const 0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
  i32.const 0
  local.get $0
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Box/Box<u64>#constructor
  local.set $2
  local.get $2
  local.set $3
  local.get $3
  local.set $4
  local.get $4
  drop
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  local.set $5
  nop
  local.get $3
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  local.get $2
  local.set $6
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64>#toBe (; 152 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  local.get $2
  local.set $9
  local.get $9
  drop
  local.get $0
  i64.load offset=8
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  local.set $10
  local.get $10
  local.set $3
  local.get $6
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<u64>
  local.get $5
  local.get $4
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<u64>
  local.get $4
  local.get $5
  local.get $6
  i64.eq
  i32.xor
  local.set $8
  local.get $3
  local.set $11
  local.get $11
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   local.set $12
   nop
   local.get $7
   i32.const 3952
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.set $13
  nop
  local.get $3
  local.set $14
  nop
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $2
  local.set $15
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|0~anonymous|0 (; 153 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
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
  call $assembly/util/_testTextMessage
  local.set $0
  local.get $0
  local.set $13
  i32.const 0
  local.set $14
  i32.const 0
  local.set $15
  i32.const 0
  local.set $16
  local.get $13
  i32.const 0
  i32.const 1168
  call $assembly/model/TextMessage#encode
  local.tee $14
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $15
  local.get $14
  local.set $16
  nop
  local.get $15
  local.tee $1
  call $~lib/near-runtime-ts/util/util.parseFromBytes<assembly/model/TextMessage>
  local.set $2
  local.get $2
  i32.load
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $3
  i32.const 680
  i32.const 3832
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toStrictEqual
  local.get $2
  i32.load offset=4
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $4
  i32.const 736
  i32.const 4112
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toStrictEqual
  local.get $2
  i64.load offset=8
  local.set $6
  i32.const 0
  local.get $6
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64>#constructor
  local.tee $5
  i64.const 415
  i32.const 4224
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u64>#toBe
  local.get $0
  local.set $7
  nop
  local.get $1
  local.set $8
  nop
  local.get $2
  local.set $9
  nop
  local.get $3
  local.set $10
  nop
  local.get $4
  local.set $11
  nop
  local.get $5
  local.set $12
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Test/it (; 154 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  local.get $0
  local.get $1
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/reportTest
  local.get $0
  local.set $3
  nop
 )
 (func $assembly/generic/Box<u32>#constructor (; 155 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 32
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 156 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.set $5
  local.get $2
  local.set $6
  i32.const 0
  local.set $7
  i32.const 0
  local.set $8
  local.get $5
  local.get $6
  call $~lib/number/I64#toString
  local.tee $7
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $7
  local.set $8
  nop
  local.get $1
  local.set $4
  nop
 )
 (func $~lib/nearEntry/encode<u32> (; 157 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  local.get $2
  local.set $5
  local.get $5
  drop
  local.get $0
  local.get $2
  local.get $1
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $0
  local.set $3
  local.get $2
  local.set $6
  nop
  local.get $3
 )
 (func $assembly/generic/Box<u32>#encode (; 158 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
  drop
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   local.set $7
   local.get $7
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
  local.set $8
  local.get $8
  local.set $3
  local.get $3
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $3
  local.get $0
  i32.load
  i32.const 2912
  call $~lib/nearEntry/encode<u32>
  local.set $9
  nop
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $3
  local.set $4
  local.get $1
  local.set $10
  nop
  local.get $2
  local.set $11
  nop
  local.get $4
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#constructor (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 33
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store offset=12
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#constructor (; 160 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 34
   call $~lib/rt/stub/__alloc
   local.set $5
   local.get $5
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
   local.set $6
   local.get $6
   drop
   local.get $2
   local.set $7
   nop
  end
  local.get $3
  i32.store
  local.get $1
  local.set $8
  nop
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar (; 161 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#isWhitespace (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar (; 163 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2360
   i32.const 2416
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace (; 164 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar (; 165 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#isWhitespace (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar (; 167 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2360
   i32.const 2416
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace (; 168 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readHexDigit (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
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
  i32.const 9
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
  local.set $5
  local.get $5
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
   i32.const 2960
   i32.const 2416
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  local.set $6
  nop
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readEscapedChar (; 170 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
  local.set $1
  local.get $1
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1120
   local.set $7
   local.get $7
   return
  end
  local.get $1
  i32.const 1144
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1144
   local.set $8
   local.get $8
   return
  end
  local.get $1
  i32.const 2816
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2816
   local.set $9
   local.get $9
   return
  end
  local.get $1
  i32.const 2840
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1232
   local.set $10
   local.get $10
   return
  end
  local.get $1
  i32.const 2864
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1280
   local.set $11
   local.get $11
   return
  end
  local.get $1
  i32.const 2888
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1328
   local.set $12
   local.get $12
   return
  end
  local.get $1
  i32.const 2912
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1376
   local.set $13
   local.get $13
   return
  end
  local.get $1
  i32.const 2936
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readHexDigit
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
   i32.const 3016
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2416
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  local.set $14
  local.get $14
  local.set $4
  local.get $6
  local.set $15
  nop
  local.get $5
  local.set $16
  nop
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readString (; 171 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2664
   i32.const 2416
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2744
    i32.const 2416
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1120
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
    local.set $6
    local.get $6
    i32.load offset=12
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     local.set $7
     nop
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 1168
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    local.set $8
    nop
    local.get $2
    local.set $9
    nop
    local.get $5
    return
   else    
    local.get $3
    i32.const 1144
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
      local.set $10
      nop
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     local.set $11
     nop
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseKey (; 172 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readString
  local.set $2
  local.get $1
  i32.load
  local.set $3
  nop
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
  i32.const 2048
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3096
   i32.const 2416
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseObject (; 173 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 2072
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
     i32.const 2184
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   i32.const 2184
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3136
    i32.const 2416
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseArray (; 174 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 3200
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
     i32.const 3288
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   i32.const 3288
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3312
    i32.const 2416
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $~lib/number/I64.parseInt (; 175 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/nearEntry/PrimitiveHandler<u64>#setString (; 176 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $2
  local.set $4
  local.get $4
  drop
  local.get $0
  i64.load
  drop
  i32.const 1
  if
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/number/U64.parseInt
   i64.store
   local.get $1
   local.set $5
   nop
   local.get $2
   local.set $6
   nop
   return
  end
  local.get $0
  i64.load
  drop
  i32.const 0
  if
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/number/I64.parseInt
   i64.store
   local.get $1
   local.set $7
   nop
   local.get $2
   local.set $8
   nop
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  local.get $1
  local.set $9
  nop
  local.get $2
  local.set $10
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseString (; 177 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 1120
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readString
  local.tee $1
  call $~lib/nearEntry/PrimitiveHandler<u64>#setString
  i32.const 1
  local.set $2
  local.get $1
  local.set $3
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readAndAssert (; 178 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $5
  local.get $5
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3464
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3504
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2416
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
    local.set $6
    nop
    local.get $4
    local.set $7
    nop
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $8
  nop
 )
 (func $~lib/nearEntry/PrimitiveHandler<u64>#setBoolean (; 179 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
  local.get $1
  local.set $4
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseBoolean (; 180 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 400
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/nearEntry/PrimitiveHandler<u64>#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 376
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/nearEntry/PrimitiveHandler<u64>#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/nearEntry/PrimitiveHandler<u64>#setInteger (; 181 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $2
  i64.store
  local.get $1
  local.set $4
  nop
  return
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseNumber (; 182 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 3616
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readChar
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
   call $~lib/nearEntry/PrimitiveHandler<u64>#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseNull (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#peekChar
  i32.const 432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#readAndAssert
   local.get $0
   i32.load
   local.set $1
   local.get $0
   i32.load offset=4
   i32.load
   local.set $2
   i32.const 0
   local.set $3
   i32.const 0
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   drop
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
   local.get $2
   local.set $4
   nop
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseValue (; 184 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#deserialize (; 185 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
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
    local.set $7
    local.get $7
    drop
    local.get $3
    local.set $8
    nop
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
   local.set $9
   nop
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3776
   i32.const 2416
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $10
  nop
  local.get $2
  local.set $11
  nop
 )
 (func $~lib/nearEntry/PrimitiveHandler<u64>#decode (; 186 ;) (type $FUNCSIG$jiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  local.set $4
  local.get $4
  drop
  local.get $2
  local.set $5
  local.get $5
  drop
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/nearEntry/PrimitiveHandler<u64>>#deserialize
  local.get $0
  i64.load
  local.set $3
  local.get $1
  local.set $6
  nop
  local.get $2
  local.set $7
  nop
  local.get $3
 )
 (func $~lib/nearEntry/decode<u32> (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $1
  local.set $4
  local.get $4
  drop
  global.get $~lib/nearEntry/PrimitiveHandler.U64
  local.get $0
  local.get $1
  call $~lib/nearEntry/PrimitiveHandler<u64>#decode
  i32.wrap_i64
  local.set $2
  local.get $0
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $2
  return
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#pushObject (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 4408
    i32.const 53
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   local.set $4
   nop
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 4408
    i32.const 57
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 2912
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 0
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.load offset=12
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   call $~lib/nearEntry/decode<u32>
   i32.store
   i32.const 0
   local.set $2
   local.get $1
   local.set $5
   nop
   local.get $2
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  local.set $6
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readHexDigit (; 189 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
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
  i32.const 9
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
  local.set $5
  local.get $5
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
   i32.const 2960
   i32.const 2416
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  local.set $6
  nop
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readEscapedChar (; 190 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
  local.set $1
  local.get $1
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1120
   local.set $7
   local.get $7
   return
  end
  local.get $1
  i32.const 1144
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1144
   local.set $8
   local.get $8
   return
  end
  local.get $1
  i32.const 2816
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2816
   local.set $9
   local.get $9
   return
  end
  local.get $1
  i32.const 2840
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1232
   local.set $10
   local.get $10
   return
  end
  local.get $1
  i32.const 2864
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1280
   local.set $11
   local.get $11
   return
  end
  local.get $1
  i32.const 2888
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1328
   local.set $12
   local.get $12
   return
  end
  local.get $1
  i32.const 2912
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1376
   local.set $13
   local.get $13
   return
  end
  local.get $1
  i32.const 2936
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readHexDigit
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
   i32.const 3016
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2416
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  local.set $14
  local.get $14
  local.set $4
  local.get $6
  local.set $15
  nop
  local.get $5
  local.set $16
  nop
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readString (; 191 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
  i32.const 1120
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2664
   i32.const 2416
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2744
    i32.const 2416
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1120
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
    local.set $6
    local.get $6
    i32.load offset=12
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     local.set $7
     nop
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 1168
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    local.set $8
    nop
    local.get $2
    local.set $9
    nop
    local.get $5
    return
   else    
    local.get $3
    i32.const 1144
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
      local.set $10
      nop
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     local.set $11
     nop
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseKey (; 192 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readString
  local.set $2
  local.get $1
  i32.load
  local.set $3
  nop
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
  i32.const 2048
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3096
   i32.const 2416
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseObject (; 193 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 2072
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $assembly/generic/__near_JSONHandler_Box<u32>#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
     i32.const 2184
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   i32.const 2184
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3136
    i32.const 2416
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#pushArray (; 194 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseArray (; 195 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 3200
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
  local.set $4
  local.get $4
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1168
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   local.set $5
   local.get $5
   drop
   local.get $2
   local.set $6
   nop
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $assembly/generic/__near_JSONHandler_Box<u32>#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
     i32.const 3288
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2624
       i32.const 2416
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   i32.const 3288
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3312
    i32.const 2416
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  local.set $7
  nop
  i32.const 1
  local.set $3
  local.get $1
  local.set $8
  nop
  local.get $3
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#setString (; 196 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $2
  local.set $4
  local.get $4
  drop
  local.get $1
  i32.const 2912
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 0
   call $~lib/number/I64.parseInt
   i32.wrap_i64
   i32.store
   local.get $1
   local.set $5
   nop
   local.get $2
   local.set $6
   nop
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 4464
   i32.const 4408
   i32.const 29
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  local.get $1
  local.set $7
  nop
  local.get $2
  local.set $8
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseString (; 197 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 1120
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readString
  local.tee $1
  call $assembly/generic/__near_JSONHandler_Box<u32>#setString
  i32.const 1
  local.set $2
  local.get $1
  local.set $3
  nop
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readAndAssert (; 198 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.set $5
  local.get $5
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3464
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3504
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2416
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
    local.set $6
    nop
    local.get $4
    local.set $7
    nop
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $8
  nop
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#setBoolean (; 199 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $1
  i32.const 2912
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 0
   i32.ne
   i32.store
   local.get $1
   local.set $4
   nop
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 4520
   i32.const 4408
   i32.const 37
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
  local.get $1
  local.set $5
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseBoolean (; 200 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 400
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $assembly/generic/__near_JSONHandler_Box<u32>#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 376
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $assembly/generic/__near_JSONHandler_Box<u32>#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#setInteger (; 201 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $3
  local.get $3
  drop
  local.get $1
  i32.const 2912
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.wrap_i64
   i32.store
   local.get $1
   local.set $4
   nop
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
  local.get $1
  local.set $5
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseNumber (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 3616
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readChar
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
   call $assembly/generic/__near_JSONHandler_Box<u32>#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $assembly/generic/__near_JSONHandler_Box<u32>#setNull (; 203 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.set $2
  local.get $2
  drop
  local.get $1
  i32.const 2912
  call $~lib/string/String.__eq
  if
   nop
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  local.set $3
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseNull (; 204 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#peekChar
  i32.const 432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $assembly/generic/__near_JSONHandler_Box<u32>#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseValue (; 205 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#deserialize (; 206 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  local.set $5
  local.get $5
  drop
  local.get $2
  local.set $6
  local.get $6
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
    local.set $7
    local.get $7
    drop
    local.get $3
    local.set $8
    nop
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
   local.set $9
   nop
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3776
   i32.const 2416
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $10
  nop
  local.get $2
  local.set $11
  nop
 )
 (func $assembly/generic/Box<u32>#decode (; 207 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  local.set $7
  local.get $7
  drop
  local.get $2
  local.set $8
  local.get $8
  drop
  i32.const 0
  local.get $0
  call $assembly/generic/__near_JSONHandler_Box<u32>#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   local.set $9
   local.get $9
   drop
   local.get $4
   local.set $10
   nop
  end
  local.get $5
  i32.store
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#constructor
  local.set $5
  local.get $3
  local.tee $4
  local.get $5
  local.tee $6
  local.get $4
  i32.load offset=4
  local.tee $4
  i32.ne
  if
   local.get $6
   local.set $11
   local.get $11
   drop
   local.get $4
   local.set $12
   nop
  end
  local.get $6
  i32.store offset=4
  local.get $5
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/JSONDecoder<assembly/generic/__near_JSONHandler_Box<u32>>#deserialize
  local.get $0
  local.set $13
  local.get $13
  local.set $6
  local.get $3
  local.set $14
  nop
  local.get $5
  local.set $15
  nop
  local.get $1
  local.set $16
  nop
  local.get $2
  local.set $17
  nop
  local.get $6
 )
 (func $~lib/near-runtime-ts/util/util.parseFromBytes<assembly/generic/Box<u32>> (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  i32.const 0
  call $assembly/generic/Box<u32>#constructor
  local.tee $1
  local.set $5
  local.get $5
  local.set $2
  local.get $2
  local.get $0
  i32.const 0
  call $assembly/generic/Box<u32>#decode
  local.set $3
  local.get $1
  local.set $6
  nop
  local.get $2
  local.set $7
  nop
  local.get $0
  local.set $8
  nop
  local.get $3
  return
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u32>#constructor (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 35
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<u32> (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u32>#constructor
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<u32> (; 211 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  i32.const 3
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  drop
  i32.const 0
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
  local.get $0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<u32> (; 212 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   return
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  i32.const 3
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  drop
  i32.const 0
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
  local.get $0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u32>#toBe (; 213 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $2
  local.set $9
  local.get $9
  drop
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  local.set $10
  local.get $10
  local.set $3
  local.get $6
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<u32>
  local.get $5
  local.get $4
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<u32>
  local.get $4
  local.get $5
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  local.set $11
  local.get $11
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   local.set $12
   nop
   local.get $7
   i32.const 3952
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.set $13
  nop
  local.get $3
  local.set $14
  nop
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $2
  local.set $15
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|0~anonymous|1 (; 214 ;) (type $FUNCSIG$v)
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
  i32.const 0
  call $assembly/generic/Box<u32>#constructor
  local.set $0
  local.get $0
  i32.const 42
  i32.store
  local.get $0
  local.set $8
  i32.const 0
  local.set $9
  i32.const 0
  local.set $10
  i32.const 0
  local.set $11
  local.get $8
  i32.const 0
  i32.const 1168
  call $assembly/generic/Box<u32>#encode
  local.tee $9
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $10
  local.get $9
  local.set $11
  nop
  local.get $10
  local.tee $1
  call $~lib/near-runtime-ts/util/util.parseFromBytes<assembly/generic/Box<u32>>
  local.set $2
  local.get $0
  i32.load
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<u32>
  local.tee $3
  local.get $2
  i32.load
  i32.const 1168
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u32>#toBe
  local.get $0
  local.set $4
  nop
  local.get $1
  local.set $5
  nop
  local.get $2
  local.set $6
  nop
  local.get $3
  local.set $7
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|0 (; 215 ;) (type $FUNCSIG$v)
  i32.const 592
  i32.const 1
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/it
  i32.const 4344
  i32.const 2
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:../node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 (; 216 ;) (type $FUNCSIG$v)
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Describe/describe (; 217 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  local.get $0
  call $../node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $../node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe
  local.get $0
  local.set $3
  nop
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor (; 218 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 39
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<i32> (; 219 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  i32.const 3
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
  local.get $0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<i32> (; 220 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   return
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  i32.const 3
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else   
   local.get $0
   drop
   i32.const 0
  end
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
  local.get $0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe (; 221 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $2
  local.set $9
  local.get $9
  drop
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  local.set $10
  local.get $10
  local.set $3
  local.get $6
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<i32>
  local.get $5
  local.get $4
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<i32>
  local.get $4
  local.get $5
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  local.set $11
  local.get $11
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   local.set $12
   nop
   local.get $7
   i32.const 3952
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.set $13
  nop
  local.get $3
  local.set $14
  nop
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $2
  local.set $15
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|1~anonymous|0 (; 222 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.tee $0
  local.set $3
  local.get $3
  local.set $1
  local.get $1
  local.set $4
  local.get $4
  i32.load offset=12
  local.set $5
  i32.const 0
  local.get $5
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor
  local.tee $2
  i32.const 0
  i32.const 1168
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $0
  local.set $6
  nop
  local.get $1
  local.set $7
  nop
  local.get $2
  local.set $8
  nop
 )
 (func $~lib/array/Array<u32>#constructor (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 11
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
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
 (func $~lib/array/Array<u32>#push (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/__tests__/roundtrip.spec/makeArray<~lib/array/Array<u32>> (; 225 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  local.tee $0
  local.set $3
  local.get $3
  local.set $1
  local.get $1
  i32.const 42
  call $~lib/array/Array<u32>#push
  drop
  local.get $1
  local.set $2
  local.get $0
  local.set $4
  nop
  local.get $2
 )
 (func $~lib/array/Array<u32>#__get (; 226 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1040
   i32.const 992
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  local.get $2
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|1~anonymous|1 (; 227 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $assembly/__tests__/roundtrip.spec/makeArray<~lib/array/Array<u32>>
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<u32>
  local.tee $1
  i32.const 42
  i32.const 1168
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<u32>#toBe
  local.get $0
  local.set $2
  nop
  local.get $1
  local.set $3
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|1 (; 228 ;) (type $FUNCSIG$v)
  i32.const 4632
  i32.const 5
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/it
  i32.const 4704
  i32.const 6
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $assembly/__tests__/roundtrip.spec/Generic<assembly/__tests__/roundtrip.spec/Foo>#constructor (; 229 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  drop
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 38
   call $~lib/rt/stub/__alloc
   local.set $3
   local.get $3
   local.set $0
  end
  local.get $0
  local.get $1
  local.set $4
  local.get $4
  i32.store
  local.get $1
  local.set $5
  nop
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#constructor (; 230 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 40
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  local.get $1
  i32.store8 offset=4
  local.get $0
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<bool> (; 231 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   return
  end
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  i32.const 11
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  i32.const 0
  i32.ne
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBe (; 232 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $2
  local.set $9
  local.get $9
  drop
  local.get $0
  i32.load8_u offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  local.set $10
  local.get $10
  local.set $3
  local.get $6
  local.set $11
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  i32.const 11
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $11
  i32.const 0
  i32.ne
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
  local.get $5
  local.get $4
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<bool>
  local.get $4
  local.get $5
  i32.const 0
  i32.ne
  local.get $6
  i32.const 0
  i32.ne
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  local.set $12
  local.get $12
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   local.set $13
   nop
   local.get $7
   i32.const 3952
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.set $14
  nop
  local.get $3
  local.set $15
  nop
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $2
  local.set $16
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|2~anonymous|0 (; 233 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  i32.const 0
  local.set $7
  i32.const 0
  local.set $8
  local.get $7
  i32.eqz
  if
   i32.const 0
   i32.const 36
   call $~lib/rt/stub/__alloc
   local.set $8
   local.get $8
   local.set $7
  end
  local.get $7
  local.tee $0
  call $assembly/__tests__/roundtrip.spec/Generic<assembly/__tests__/roundtrip.spec/Foo>#constructor
  local.set $1
  local.get $1
  drop
  i32.const 1
  local.set $3
  i32.const 0
  local.get $3
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#constructor
  local.tee $2
  i32.const 1
  i32.const 1168
  call $../node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBe
  local.get $0
  local.set $4
  nop
  local.get $1
  local.set $5
  nop
  local.get $2
  local.set $6
  nop
 )
 (func $start:assembly/__tests__/roundtrip.spec~anonymous|2 (; 234 ;) (type $FUNCSIG$v)
  i32.const 4824
  i32.const 8
  call $../node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:assembly/__tests__/roundtrip.spec (; 235 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/index
  call $start:~lib/assemblyscript-json/decoder
  call $start:~lib/nearEntry
  i32.const 552
  i32.const 3
  call $../node_modules/@as-pect/assembly/assembly/internal/Describe/describe
  i32.const 4576
  i32.const 7
  call $../node_modules/@as-pect/assembly/assembly/internal/Describe/describe
  i32.const 4776
  i32.const 9
  call $../node_modules/@as-pect/assembly/assembly/internal/Describe/describe
 )
 (func $../node_modules/@as-pect/assembly/assembly/index/__ready (; 236 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/call/__call (; 237 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual (; 238 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case8|0
    block $case7|0
     block $case6|0
      block $case5|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
            local.set $0
            local.get $0
            i32.const 0
            i32.eq
            br_if $case0|0
            local.get $0
            i32.const 6
            i32.eq
            br_if $case1|0
            local.get $0
            i32.const 2
            i32.eq
            br_if $case2|0
            local.get $0
            i32.const 3
            i32.eq
            br_if $case3|0
            local.get $0
            i32.const 1
            i32.eq
            br_if $case4|0
            local.get $0
            i32.const 4
            i32.eq
            br_if $case5|0
            local.get $0
            i32.const 5
            i32.eq
            br_if $case6|0
            local.get $0
            i32.const 10
            i32.eq
            br_if $case7|0
            local.get $0
            i32.const 11
            i32.eq
            br_if $case8|0
            br $break|0
           end
           return
          end
          global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
          global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
          call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray
          br $break|0
         end
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float
         i32.const 1
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
         call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat
         br $break|0
        end
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
        call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger
        br $break|0
       end
       global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
       call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull
       br $break|0
      end
      global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
      global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset
      global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
      call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal
      br $break|0
     end
     global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
     global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
     call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString
     br $break|0
    end
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
    call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong
    br $break|0
   end
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool
   br $break|0
  end
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected (; 239 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case10|0
    block $case9|0
     block $case8|0
      block $case7|0
       block $case6|0
        block $case5|0
         block $case4|0
          block $case3|0
           block $case2|0
            block $case1|0
             block $case0|0
              global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
              local.set $0
              local.get $0
              i32.const 6
              i32.eq
              br_if $case0|0
              local.get $0
              i32.const 2
              i32.eq
              br_if $case1|0
              local.get $0
              i32.const 3
              i32.eq
              br_if $case2|0
              local.get $0
              i32.const 1
              i32.eq
              br_if $case3|0
              local.get $0
              i32.const 4
              i32.eq
              br_if $case4|0
              local.get $0
              i32.const 5
              i32.eq
              br_if $case5|0
              local.get $0
              i32.const 7
              i32.eq
              br_if $case6|0
              local.get $0
              i32.const 9
              i32.eq
              br_if $case7|0
              local.get $0
              i32.const 8
              i32.eq
              br_if $case8|0
              local.get $0
              i32.const 10
              i32.eq
              br_if $case9|0
              local.get $0
              i32.const 11
              i32.eq
              br_if $case10|0
              br $break|0
             end
             global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
             global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
             global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
             call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray
             br $break|0
            end
            global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float
            i32.const 1
            global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
            global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
            call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat
            br $break|0
           end
           global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
           global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
           global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
           global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
           call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger
           br $break|0
          end
          global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
          global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
          call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull
          br $break|0
         end
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
         global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
         call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal
         br $break|0
        end
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
        global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
        call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString
        br $break|0
       end
       global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
       global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
       call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy
       br $break|0
      end
      global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
      global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
      call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite
      br $break|0
     end
     global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
     global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
     call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy
     br $break|0
    end
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
    global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
    call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong
    br $break|0
   end
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
   global.get $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
   call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool
   br $break|0
  end
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (; 240 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $../node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace (; 241 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $../node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId (; 242 ;) (type $FUNCSIG$i) (result i32)
  i32.const 41
 )
 (func $../node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup (; 243 ;) (type $FUNCSIG$v)
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  call $../node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
 )
 (func $start (; 244 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
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
  call $start:assembly/__tests__/roundtrip.spec
 )
 (func $null (; 245 ;) (type $FUNCSIG$v)
 )
)
