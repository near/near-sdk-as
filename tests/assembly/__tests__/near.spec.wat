(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__aspect" "getStackTrace" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace (result i32)))
 (import "__aspect" "reportTest" (func $node_modules/@as-pect/assembly/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportDescribe" (func $node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportActualBool" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool (param i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedBool" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool (param i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 32) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 64) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 96) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 120) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 144) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 216) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 360) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00u\00t\00i\00l\00s\00")
 (data (i32.const 392) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00b\00y\00t\00e\00s\00T\00o\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 440) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 488) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 544) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 600) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 656) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 704) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00d\00o\00g\00")
 (data (i32.const 728) "\8a\00\00\00\01\00\00\00\01\00\00\00\8a\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 888) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 904) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00b\00a\00s\00e\006\004\00 \00e\00n\00c\00o\00d\00i\00n\00g\00/\00d\00e\00c\00o\00d\00i\00n\00g\00")
 (data (i32.const 968) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 1008) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00h\00e\00l\00l\00o\00,\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 1048) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00")
 (data (i32.const 1096) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1208) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1256) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00e\00s\00t\00 \00p\00a\00d\00 \001\00")
 (data (i32.const 1296) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00o\00m\00e\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 1336) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\002\009\00t\00Z\00S\00B\00z\00d\00H\00J\00p\00b\00m\00c\00=\00")
 (data (i32.const 1384) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00e\00s\00t\00 \00p\00a\00d\00 \002\00")
 (data (i32.const 1424) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00s\00o\00m\00e\00 \00l\00o\00n\00g\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 1472) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00c\002\009\00t\00Z\00S\00B\00s\00b\002\005\00n\00I\00H\00N\000\00c\00m\00l\00u\00Z\00w\00=\00=\00")
 (data (i32.const 1536) "\n\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 8 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/near.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/near.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 $start:assembly/__tests__/near.spec~anonymous|1~anonymous|0 $start:assembly/__tests__/near.spec~anonymous|1~anonymous|1 $start:assembly/__tests__/near.spec~anonymous|1~anonymous|2 $start:assembly/__tests__/near.spec~anonymous|1)
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
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float (mut f64) (f64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float (mut f64) (f64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 3))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1536))
 (global $~lib/heap/__heap_base i32 (i32.const 1620))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__ready" (func $node_modules/@as-pect/assembly/assembly/index/__ready))
 (export "__call" (func $node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual))
 (export "__sendExpected" (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup))
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
 (func $~lib/memory/memory.fill (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 456
   i32.const 504
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
 (func $~lib/typedarray/Uint8Array#constructor (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 6
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
 (func $~lib/typedarray/Uint8Array#__set (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 560
   i32.const 616
   i32.const 146
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
 (func $~lib/typedarray/Uint8Array#get:length (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  local.set $10
  local.get $10
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint8Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $4
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.set $11
  local.get $11
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   local.set $12
   local.get $12
   drop
   local.get $8
   local.set $13
   nop
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  local.set $14
  nop
  local.get $9
 )
 (func $~lib/util/memory/memcpy (; 37 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 38 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/stub/__realloc (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.UTF8.decodeUnsafe (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 672
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
 (func $~lib/string/String.UTF8.decode (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $0
  local.get $0
  local.set $4
  local.get $4
  i32.const 16
  i32.sub
  i32.load offset=12
  local.get $1
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $2
  local.get $0
  local.set $5
  nop
  local.get $2
 )
 (func $~lib/near-runtime-ts/util/util.bytesToString (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.set $3
  local.get $3
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.set $4
   local.get $4
   local.set $1
   local.get $0
   local.set $5
   nop
   local.get $1
   return
  end
  local.get $0
  local.set $8
  i32.const 0
  local.set $9
  local.get $8
  i32.load
  local.set $9
  local.get $9
  local.tee $1
  i32.const 1
  call $~lib/string/String.UTF8.decode
  local.set $2
  local.get $1
  local.set $6
  nop
  local.get $0
  local.set $7
  nop
  local.get $2
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 7
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
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String> (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor
  local.set $1
  local.get $0
  local.set $3
  nop
  local.get $1
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<~lib/string/String> (; 45 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/getStackTrace
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
  local.get $0
  local.set $1
  local.get $1
  local.set $3
  local.get $3
  drop
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  local.set $4
  nop
  local.get $1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 5
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  local.get $0
  local.set $5
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<~lib/string/String> (; 46 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
  i32.eqz
  if
   call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportInvalidExpectCall
   local.get $0
   local.set $4
   nop
   return
  end
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/getStackTrace
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
  local.get $1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
  local.get $0
  local.set $2
  local.get $2
  local.set $5
  local.get $5
  drop
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  local.set $6
  nop
  local.get $2
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  i32.const 5
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  local.get $0
  local.set $7
  nop
 )
 (func $~lib/string/String#get:length (; 47 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 48 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear (; 50 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
   local.set $0
   nop
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
  end
  i32.const -1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear (; 51 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
  global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
   local.set $0
   nop
   i32.const 0
   global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toBe (; 52 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $1
  local.set $9
  local.get $9
  drop
  local.get $2
  local.set $10
  local.get $10
  drop
  local.get $0
  i32.load offset=4
  local.set $11
  local.get $11
  local.set $6
  local.get $1
  local.set $12
  local.get $12
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  local.set $13
  local.get $13
  local.set $3
  local.get $6
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.report<~lib/string/String>
  local.get $5
  local.get $4
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.report<~lib/string/String>
  local.get $4
  local.get $5
  local.get $6
  call $~lib/string/String.__eq
  i32.xor
  local.set $8
  local.get $3
  local.set $14
  local.get $14
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   local.set $15
   nop
   local.get $7
   i32.const 744
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  local.set $16
  nop
  local.get $3
  local.set $17
  nop
  local.get $5
  local.set $18
  nop
  local.get $6
  local.set $19
  nop
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  local.get $1
  local.set $20
  nop
  local.get $2
  local.set $21
  nop
 )
 (func $start:assembly/__tests__/near.spec~anonymous|0~anonymous|0 (; 53 ;) (type $FUNCSIG$v)
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
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 131
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 111
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2147483647
  call $~lib/typedarray/Uint8Array#subarray
  local.set $1
  local.get $1
  call $~lib/near-runtime-ts/util/util.bytesToString
  local.tee $2
  if (result i32)
   local.get $2
  else   
   unreachable
  end
  local.set $4
  local.get $4
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $3
  i32.const 720
  i32.const 904
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toBe
  local.get $0
  local.set $5
  nop
  local.get $1
  local.set $6
  nop
  local.get $2
  local.set $7
  nop
  local.get $3
  local.set $8
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Test/it (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  local.get $0
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/reportTest
  local.get $0
  local.set $3
  nop
 )
 (func $start:assembly/__tests__/near.spec~anonymous|0 (; 55 ;) (type $FUNCSIG$v)
  i32.const 408
  i32.const 1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0 (; 56 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Describe/describe (; 57 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $2
  local.get $2
  drop
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/reportEndDescribe
  local.get $0
  local.set $3
  nop
 )
 (func $~lib/string/String.UTF8.byteLength (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.UTF8.encode (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 672
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
    i32.const 672
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
 (func $~lib/near-runtime-ts/util/util.toUTF8 (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $4
  local.get $4
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $2
  local.set $5
  nop
  local.get $0
  local.set $6
  nop
  local.get $3
 )
 (func $~lib/near-runtime-ts/util/util.stringToBytes (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.set $4
  local.get $4
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
  local.set $5
  nop
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 8
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
   i32.const 1112
   i32.const 1224
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
 (func $~lib/typedarray/Uint8Array#__get (; 63 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 560
   i32.const 616
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
 (func $~lib/string/String#charAt (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 904
   local.set $3
   local.get $3
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
  local.set $4
  local.get $4
 )
 (func $~lib/array/ensureSize (; 65 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 456
    i32.const 1224
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
 (func $~lib/array/Array<~lib/string/String>#push (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<~lib/string/String>#join_str (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 904
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
 (func $~lib/array/Array<~lib/string/String>#join (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/near-runtime-ts/base64/base64.encode (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  local.set $9
  local.get $9
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
   i32.const 904
   local.set $10
   local.get $10
   local.set $5
   local.get $0
   local.set $11
   nop
   local.get $3
   local.set $12
   nop
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
    local.set $13
    nop
    local.get $6
    local.set $14
    nop
    local.get $7
    local.set $15
    nop
    local.get $8
    local.set $16
    nop
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
    local.set $17
    nop
    local.get $7
    local.set $18
    nop
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
   local.set $19
   nop
   local.get $8
   local.set $20
   nop
   local.get $6
   local.set $21
   nop
   br $break|1
  end
  local.get $3
  i32.const 904
  call $~lib/array/Array<~lib/string/String>#join
  local.set $6
  local.get $3
  local.set $22
  nop
  local.get $0
  local.set $23
  nop
  local.get $6
 )
 (func $~lib/string/String#indexOf (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.set $8
  local.get $8
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
   local.set $9
   nop
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
   local.set $10
   nop
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
     local.set $11
     nop
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
  local.set $12
  nop
  local.get $4
 )
 (func $~lib/near-runtime-ts/base64/base64.getByte64 (; 71 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $4
  local.get $4
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
  local.set $5
  nop
  local.get $0
  local.set $6
  nop
  local.get $3
 )
 (func $~lib/near-runtime-ts/base64/base64.decode (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.set $12
  local.get $12
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
   local.set $13
   nop
   local.get $5
   return
  end
  local.get $0
  local.get $4
  i32.const 1
  i32.sub
  call $~lib/string/String#charAt
  local.tee $5
  i32.const 208
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
   i32.const 208
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
   local.set $14
   nop
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
  local.set $15
  nop
  local.get $0
  local.set $16
  nop
  local.get $11
 )
 (func $assembly/__tests__/near.spec/testBase64 (; 73 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $0
  local.set $8
  local.get $8
  drop
  local.get $1
  local.set $9
  local.get $9
  drop
  local.get $0
  call $~lib/near-runtime-ts/util/util.stringToBytes
  local.set $2
  local.get $2
  call $~lib/near-runtime-ts/base64/base64.encode
  local.set $3
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $4
  local.get $1
  i32.const 904
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toBe
  local.get $3
  call $~lib/near-runtime-ts/base64/base64.decode
  local.set $5
  local.get $5
  call $~lib/near-runtime-ts/util/util.bytesToString
  local.tee $6
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $7
  local.get $0
  i32.const 904
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/string/String>#toBe
  local.get $2
  local.set $10
  nop
  local.get $3
  local.set $11
  nop
  local.get $4
  local.set $12
  nop
  local.get $5
  local.set $13
  nop
  local.get $6
  local.set $14
  nop
  local.get $7
  local.set $15
  nop
  local.get $0
  local.set $16
  nop
  local.get $1
  local.set $17
  nop
 )
 (func $start:assembly/__tests__/near.spec~anonymous|1~anonymous|0 (; 74 ;) (type $FUNCSIG$v)
  i32.const 1024
  i32.const 1064
  call $assembly/__tests__/near.spec/testBase64
 )
 (func $start:assembly/__tests__/near.spec~anonymous|1~anonymous|1 (; 75 ;) (type $FUNCSIG$v)
  i32.const 1312
  i32.const 1352
  call $assembly/__tests__/near.spec/testBase64
 )
 (func $start:assembly/__tests__/near.spec~anonymous|1~anonymous|2 (; 76 ;) (type $FUNCSIG$v)
  i32.const 1440
  i32.const 1488
  call $assembly/__tests__/near.spec/testBase64
 )
 (func $start:assembly/__tests__/near.spec~anonymous|1 (; 77 ;) (type $FUNCSIG$v)
  i32.const 984
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
  i32.const 1272
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
  i32.const 1400
  i32.const 6
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $node_modules/@as-pect/assembly/assembly/index/__ready (; 78 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.ready
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/call/__call (; 79 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Actual/__sendActual (; 80 ;) (type $FUNCSIG$v)
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
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.type
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
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
          call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualArray
          br $break|0
         end
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.float
         i32.const 1
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
         call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualFloat
         br $break|0
        end
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
        call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualInteger
        br $break|0
       end
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
       call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualNull
       br $break|0
      end
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.offset
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
      call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualReferenceExternal
      br $break|0
     end
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
     call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualString
     br $break|0
    end
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.reference
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.signed
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
    call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualLong
    br $break|0
   end
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.integer
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.stackTrace
   call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/reportActualBool
   br $break|0
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/report/Expected/__sendExpected (; 81 ;) (type $FUNCSIG$v)
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
              global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.type
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
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
             global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
             call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedArray
             br $break|0
            end
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.float
            i32.const 1
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
            global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
            call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFloat
            br $break|0
           end
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
           global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
           call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedInteger
           br $break|0
          end
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
          global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
          call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedNull
          br $break|0
         end
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.offset
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
         global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
         call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedReferenceExternal
         br $break|0
        end
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
        global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
        call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedString
        br $break|0
       end
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
       global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
       call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFalsy
       br $break|0
      end
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
      global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
      call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedFinite
      br $break|0
     end
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
     global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
     call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedTruthy
     br $break|0
    end
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.reference
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.signed
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
    global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
    call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedLong
    br $break|0
   end
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.integer
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.negated
   global.get $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.stackTrace
   call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/reportExpectedBool
   br $break|0
  end
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (; 82 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace (; 83 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId (; 84 ;) (type $FUNCSIG$i) (result i32)
  i32.const 9
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/__cleanup (; 85 ;) (type $FUNCSIG$v)
  call $node_modules/@as-pect/assembly/assembly/internal/report/Expected/Expected.clear
  call $node_modules/@as-pect/assembly/assembly/internal/report/Actual/Actual.clear
 )
 (func $start (; 86 ;) (type $FUNCSIG$v)
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
  call $start:~lib/near-runtime-ts/index
  i32.const 376
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/describe
  i32.const 920
  i32.const 7
  call $node_modules/@as-pect/assembly/assembly/internal/Describe/describe
 )
 (func $null (; 87 ;) (type $FUNCSIG$v)
 )
)
