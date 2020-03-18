(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
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
 (import "env" "log_utf8" (func $../assembly/runtime/env/imports/env.log_utf8 (param i64 i64)))
 (import "env" "input" (func $../assembly/runtime/env/imports/env.input (param i64)))
 (import "env" "register_len" (func $../assembly/runtime/env/imports/env.register_len (param i64) (result i64)))
 (import "env" "panic" (func $../assembly/runtime/env/imports/env.panic))
 (import "env" "read_register" (func $../assembly/runtime/env/imports/env.read_register (param i64 i64)))
 (import "env" "value_return" (func $../assembly/runtime/env/imports/env.value_return (param i64 i64)))
 (memory $0 1)
 (data (i32.const 16) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 48) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 80) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 112) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 144) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 176) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 320) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00b\00l\00o\00c\00k\00_\00i\00n\00d\00e\00x\00_\00s\00e\00e\00d\00e\00d\00_\00a\00t\00")
 (data (i32.const 384) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00k\00e\00y\00")
 (data (i32.const 448) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00r\00a\00n\00d\00o\00m\00_\00b\00u\00f\00f\00e\00r\00_\00i\00n\00d\00e\00x\00_\00k\00e\00y\00")
 (data (i32.const 512) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 560) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00a\00r\00t\00i\00n\00g\00 \00t\00e\00s\00t\00")
 (data (i32.const 608) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 656) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 720) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 768) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 800) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00*\00\00\00\0b\00\00\00")
 (data (i32.const 832) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 864) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 928) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 944) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1008) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1072) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 1104) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00@\04\00\00")
 (data (i32.const 1136) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00W\00o\00r\00l\00d\00")
 (data (i32.const 1168) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\80\04\00\00")
 (data (i32.const 1200) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1248) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 1296) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00")
 (data (i32.const 1328) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00B\00e\00f\00o\00r\00e\00:\00 \00")
 (data (i32.const 1360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1392) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1520) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1552) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 1584) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 1616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1648) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 1680) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1712) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 1744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1776) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 1808) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1840) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 1872) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 1968) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 2000) "\90\01\00\00\01\00\00\00\14\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2416) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2448) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2480) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2512) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 2544) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 2576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 2608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 2640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 2672) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 2704) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 2736) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00u\006\004\00_\00z\00e\00r\00o\00")
 (data (i32.const 2768) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 2800) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 2832) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 2864) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 2912) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 2944) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2976) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 3088) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 3120) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 3168) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 3200) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 3232) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 3264) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 3360) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 3440) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 3488) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 3536) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00A\00r\00r\00")
 (data (i32.const 3568) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 3600) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 3664) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 3760) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s\00")
 (data (i32.const 3840) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 3888) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3968) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 4048) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 4080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 4112) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 4144) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 4176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 4208) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 4240) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 4304) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 4384) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 4432) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 4496) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 4560) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 4608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 4640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 4672) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 4736) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00.\00.\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00i\00n\00d\00g\00e\00n\00.\00t\00s\00")
 (data (i32.const 4800) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 4864) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 4912) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00t\00y\00p\00e\00 \00")
 (data (i32.const 4944) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00F\00o\00o\00B\00a\00r\00")
 (data (i32.const 4976) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 5024) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00K\00e\00y\00:\00 \00")
 (data (i32.const 5056) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 \00")
 (data (i32.const 5104) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 5152) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 \00")
 (data (i32.const 5200) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 5280) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 5312) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r\00")
 (data (i32.const 5376) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002\00")
 (data (i32.const 5408) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004\00")
 (data (i32.const 5440) "~\00\00\00\01\00\00\00\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 5584) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004\00")
 (data (i32.const 5616) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 5648) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 5696) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g\00")
 (data (i32.const 5728) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l\00")
 (data (i32.const 5792) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 5840) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00>\00")
 (data (i32.const 5952) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 6032) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>\00")
 (data (i32.const 6112) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\003\002\00>\00")
 (data (i32.const 6160) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00i\003\002\00>\00")
 (data (i32.const 6208) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\001\002\008\00")
 (data (i32.const 6240) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 6288) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 6352) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 6448) "\10\00\00\00\01\00\00\00\"\00\00\00\10\00\00\00\e0\18\00\00\e0\18\00\00K\00\00\00K\00\00\00")
 (data (i32.const 6480) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00/\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00>\00")
 (data (i32.const 6576) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00u\006\004\00>\00")
 (data (i32.const 6624) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00A\00f\00t\00e\00r\00:\00 \00 \00")
 (data (i32.const 6656) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00.\00.\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00b\00i\00n\00d\00g\00e\00n\00/\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 6752) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00t\00r\00")
 (data (i32.const 6784) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00")
 (data (i32.const 6832) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00N\00u\00l\00l\00a\00b\00l\00e\00s\00")
 (data (i32.const 6880) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00a\00b\00l\00e\002\00.\00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00 \00t\00o\00 \00b\00e\00 \00n\00u\00l\00l\00")
 (data (i32.const 6976) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6992) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\15\cd[\07\00\00\00\00")
 (data (i32.const 7024) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 7040) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00")
 (data (i32.const 7088) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\"\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00\"\00")
 (data (i32.const 7152) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00T\00e\00s\00t\00 \00P\00a\00s\00s\00e\00d\00")
 (data (i32.const 7200) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 7232) "b\00\00\00\01\00\00\00\01\00\00\00b\00\00\00A\00r\00r\00a\00y\00<\00.\00.\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00b\00i\00n\00d\00g\00e\00n\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00")
 (data (i32.const 7360) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 7392) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 7456) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 7504) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 7552) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00A\00n\00o\00t\00h\00e\00r\00C\00o\00n\00t\00a\00i\00n\00e\00r\00C\00l\00a\00s\00s\00")
 (data (i32.const 7616) "\86\00\00\00\01\00\00\00\01\00\00\00\86\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00.\00.\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00b\00i\00n\00d\00g\00e\00n\00/\00m\00o\00d\00e\00l\00/\00F\00o\00o\00B\00a\00r\00>\00>\00")
 (data (i32.const 7776) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00 \00W\00o\00r\00l\00d\00")
 (data (i32.const 7808) ")\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\10\00\00\00\07\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93 \00\00\02\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00\13\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\16\00\00\00\98 A\00\00\00\00\00\10\00\00\00\16\00\00\00\10\00\00\00\16\00\00\00\10\00\00\00\16\00\00\00\10\00\00\00\16\00\00\00\10\00\00\00\16\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $../assembly/__tests__/bindgen/main/convertFoobars~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $../assembly/runtime/storage/storage (mut i32) (i32.const 0))
 (global $../assembly/runtime/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 32))
 (global $../assembly/runtime/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 64))
 (global $../assembly/runtime/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 96))
 (global $../assembly/runtime/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 128))
 (global $../assembly/runtime/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $../assembly/runtime/contract/context (mut i32) (i32.const 0))
 (global $../assembly/runtime/base64/base64.PADCHAR i32 (i32.const 160))
 (global $../assembly/runtime/base64/base64.ALPHA i32 (i32.const 192))
 (global $../assembly/runtime/math/math._BLOCK_INDEX_SEED_AT_KEY i32 (i32.const 336))
 (global $../assembly/runtime/math/math._RANDOM_BUFFER_KEY i32 (i32.const 400))
 (global $../assembly/runtime/math/math._RANDOM_BUFFER_INDEX_KEY i32 (i32.const 464))
 (global $~lib/as-bignum/utils/HEX_CHARS i32 (i32.const 528))
 (global $~lib/as-bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/as-bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $../assembly/vm/outcome/NONE (mut i32) (i32.const 0))
 (global $../assembly/vm/outcome/ValueID i32 (i32.const 8))
 (global $../assembly/vm/outcome/ReceiptIndexID i32 (i32.const 9))
 (global $../assembly/vm/outcome/NoneID i32 (i32.const 6))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 2528))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 2560))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 2432))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/as-bignum/integer/u128/HEX_CHARS i32 (i32.const 528))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/as-bignum/utils/RadixCharsTable i32 (i32.const 6464))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 7808))
 (global $~lib/heap/__heap_base i32 (i32.const 8140))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "runTest" (func $../assembly/__tests__/bindgen/test/runTest))
 (export "convertFoobars" (func $../assembly/__tests__/bindgen/test/__wrapper_convertFoobars))
 (export "getStringArrayLength" (func $../assembly/__tests__/bindgen/test/__wrapper_getStringArrayLength))
 (export "rewrapFoobar" (func $../assembly/__tests__/bindgen/test/__wrapper_rewrapFoobar))
 (export "unwrapFoobar" (func $../assembly/__tests__/bindgen/test/__wrapper_unwrapFoobar))
 (export "stringOrNull" (func $../assembly/__tests__/bindgen/test/__wrapper_stringOrNull))
 (export "stringAliasTest" (func $../assembly/__tests__/bindgen/test/__wrapper_stringAliasTest))
 (export "classOrNull" (func $../assembly/__tests__/bindgen/test/__wrapper_classOrNull))
 (export "classAndNull" (func $../assembly/__tests__/bindgen/test/__wrapper_classAndNull))
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
 (func $start:../assembly/index (; 9 ;)
  (local $0 i32)
  i32.const 8144
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
  global.set $../assembly/runtime/storage/storage
  i32.const 0
  i32.const 4
  call $~lib/rt/stub/__alloc
  global.set $../assembly/runtime/contract/context
  i32.const 0
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
  end
  global.set $../assembly/vm/outcome/NONE
 )
 (func $~lib/string/String.UTF8.byteLength (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/memory/memory.fill (; 11 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 12 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 624
   i32.const 672
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
 (func $~lib/typedarray/Uint8Array#constructor (; 13 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 12
   i32.const 10
   call $~lib/rt/stub/__alloc
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/util/memory/memcpy (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String.UTF8.encode (; 16 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 736
   i32.const 719
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
 (func $../assembly/runtime/util/util.stringToBytes (; 17 ;) (param $0 i32) (result i32)
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
 (func $../assembly/runtime/logging/logging.log<~lib/string/String> (; 18 ;) (param $0 i32)
  local.get $0
  call $../assembly/runtime/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/runtime/env/imports/env.log_utf8
 )
 (func $../assembly/__tests__/bindgen/model/FooBar#constructor (; 19 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 68
   i32.const 11
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
  i32.const 784
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
 (func $~lib/rt/__allocArray (; 20 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  local.tee $5
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $1
  local.tee $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/string/String#get:length (; 21 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charAt (; 22 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 944
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
 (func $~lib/util/string/compareImpl (; 23 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 24 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#indexOf (; 25 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $../assembly/runtime/base64/base64.getByte64 (; 26 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 192
  local.get $0
  local.get $1
  call $~lib/string/String#charAt
  i32.const 0
  call $~lib/string/String#indexOf
 )
 (func $~lib/typedarray/Uint8Array#__set (; 27 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 960
   i32.const 1024
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
 (func $../assembly/runtime/base64/base64.decode (; 28 ;) (param $0 i32) (result i32)
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
  i32.const 160
  call $~lib/string/String.__eq
  if
   i32.const 1
   local.set $7
   local.get $0
   local.get $4
   i32.const 2
   i32.sub
   call $~lib/string/String#charAt
   i32.const 160
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
    call $../assembly/runtime/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    call $../assembly/runtime/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 2
    i32.add
    call $../assembly/runtime/base64/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 3
    i32.add
    call $../assembly/runtime/base64/base64.getByte64
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
    call $../assembly/runtime/base64/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $2
    i32.const 1
    i32.add
    call $../assembly/runtime/base64/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $2
    i32.const 2
    i32.add
    call $../assembly/runtime/base64/base64.getByte64
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
   call $../assembly/runtime/base64/base64.getByte64
   i32.const 18
   i32.shl
   local.get $0
   local.get $2
   i32.const 1
   i32.add
   call $../assembly/runtime/base64/base64.getByte64
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
 (func $~lib/as-bignum/integer/u128/u128#constructor (; 29 ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 30 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 16
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
 (func $~lib/rt/stub/__realloc (; 31 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1264
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
   i32.const 1264
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
 (func $~lib/array/ensureSize (; 32 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 624
    i32.const 1216
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 33 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 960
    i32.const 1216
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
 (func $~lib/array/Array<i32>#constructor (; 34 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 15
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
 (func $~lib/array/Array<~lib/string/String>#constructor (; 35 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#push (; 36 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 37 ;) (param $0 i32) (result i32)
  (local $1 i32)
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
 (func $../assembly/bindgen/JSONEncoder#constructor (; 38 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 18
   call $~lib/rt/stub/__alloc
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
 )
 (func $~lib/array/Array<i32>#__get (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
 (func $~lib/array/Array<~lib/string/String>#push (; 40 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 41 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
 )
 (func $~lib/array/Array<i32>#__set (; 42 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 960
    i32.const 1216
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
 (func $~lib/string/String.__ne (; 43 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/string/String#charCodeAt (; 44 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#substring (; 45 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 944
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
 (func $~lib/util/number/decimalCount32 (; 46 ;) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 47 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
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
    i32.const 2016
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 2016
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
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2016
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
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
   i32.const 2016
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 48 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1984
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
 (func $~lib/string/String#concat (; 49 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   local.get $1
   i32.const 2432
   local.tee $2
   i32.ne
   if (result i32)
    i32.const 2432
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
   i32.const 944
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
 (func $~lib/string/String.__concat (; 50 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 2432
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 51 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1504
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
     i32.const 1504
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     local.set $5
    end
    local.get $5
    i32.eqz
    if (result i32)
     i32.const 1536
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
     i32.const 1504
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.eq
     if
      local.get $0
      i32.const 1568
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else
      i32.const 1536
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $2
      i32.eq
      if
       local.get $0
       i32.const 1600
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else
       i32.const 1632
       i32.const 0
       call $~lib/string/String#charCodeAt
       local.get $2
       i32.eq
       if
        local.get $0
        i32.const 1664
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else
        i32.const 1696
        i32.const 0
        call $~lib/string/String#charCodeAt
        local.get $2
        i32.eq
        if
         local.get $0
         i32.const 1728
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else
         i32.const 1760
         i32.const 0
         call $~lib/string/String#charCodeAt
         local.get $2
         i32.eq
         if
          local.get $0
          i32.const 1792
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else
          i32.const 1824
          i32.const 0
          call $~lib/string/String#charCodeAt
          local.get $2
          i32.eq
          if
           local.get $0
           i32.const 1856
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else
           i32.const 1888
           local.get $2
           call $~lib/util/number/itoa32
           call $~lib/string/String.__concat
           i32.const 1408
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
  i32.const 1504
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 52 ;) (param $0 i32) (param $1 i32)
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
   i32.const 1376
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
    i32.const 1408
    i32.const 79
    i32.const 29
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2464
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 53 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2496
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $start:~lib/assemblyscript-json/decoder (; 54 ;)
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 2592
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 2624
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 2656
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 55 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 23
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#constructor (; 56 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 24
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
 (func $start:~lib/assemblyscript-json/index (; 57 ;)
  (local $0 i32)
  call $start:~lib/assemblyscript-json/decoder
  i32.const 4
  i32.const 21
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
 (func $~lib/util/number/decimalCount64 (; 58 ;) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 59 ;) (param $0 i32) (param $1 i64) (param $2 i32)
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
  loop $while-continue|0
   local.get $1
   i64.const 100000000
   i64.ge_u
   local.set $3
   local.get $3
   if
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
    i32.const 2016
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    i32.const 2016
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
    i32.const 2016
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    i32.const 2016
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
    br $while-continue|0
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/itoa64 (; 60 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1984
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 61 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $../assembly/bindgen/encode<i32,../assembly/bindgen/JSONEncoder> (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $../assembly/bindgen/encode<u32,../assembly/bindgen/JSONEncoder> (; 63 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $2
 )
 (func $~lib/util/number/utoa64 (; 64 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1984
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 65 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
 )
 (func $../assembly/bindgen/encode<u64,../assembly/bindgen/JSONEncoder> (; 66 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $1
  local.get $0
  call $~lib/util/number/utoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 67 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2432
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $../assembly/bindgen/encode<~lib/string/String,../assembly/bindgen/JSONEncoder> (; 68 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#__get (; 69 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 960
   i32.const 1024
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
 (func $~lib/util/string/joinStringArray (; 70 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 944
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
    i32.const 944
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
 (func $~lib/array/Array<~lib/string/String>#join (; 71 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinStringArray
 )
 (func $../assembly/runtime/base64/base64.encode (; 72 ;) (param $0 i32) (result i32)
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
   i32.const 944
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
    i32.const 192
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
    i32.const 192
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
    i32.const 192
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
    i32.const 192
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 160
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 160
    call $~lib/array/Array<~lib/string/String>#push
    drop
    br $break|1
   end
   local.get $1
   i32.const 192
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
   i32.const 192
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
   local.get $2
   i32.const 6
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $1
   i32.const 160
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $1
  i32.const 944
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $../assembly/bindgen/encode<~lib/typedarray/Uint8Array,../assembly/bindgen/JSONEncoder> (; 73 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $2
   local.get $1
   local.get $0
   call $../assembly/runtime/base64/base64.encode
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 74 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2960
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 75 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 76 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#pop (; 77 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3136
   i32.const 1216
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 78 ;) (param $0 i32)
  local.get $0
  i32.const 3104
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $../assembly/bindgen/encode<~lib/array/Array<~lib/string/String>,../assembly/bindgen/JSONEncoder> (; 79 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<~lib/string/String,../assembly/bindgen/JSONEncoder>
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
 (func $../assembly/bindgen/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,../assembly/bindgen/JSONEncoder> (; 80 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<~lib/array/Array<~lib/string/String>,../assembly/bindgen/JSONEncoder>
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
 (func $~lib/array/Array<u32>#__get (; 81 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
 (func $../assembly/bindgen/encode<~lib/array/Array<u32>,../assembly/bindgen/JSONEncoder> (; 82 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<u32,../assembly/bindgen/JSONEncoder>
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
 (func $../assembly/bindgen/encode<~lib/array/Array<i32>,../assembly/bindgen/JSONEncoder> (; 83 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<i32,../assembly/bindgen/JSONEncoder>
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
 (func $~lib/typedarray/Int8Array#__get (; 84 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 960
   i32.const 1024
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
 (func $~lib/typedarray/Int8Array#__set (; 85 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 960
   i32.const 1024
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
 (func $~lib/as-bignum/utils/processU64 (; 86 ;) (param $0 i32) (param $1 i64)
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
 (func $~lib/as-bignum/utils/u128toa10 (; 87 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 12
  i32.const 26
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
  i32.const 944
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
     i32.const 528
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
 (func $~lib/as-bignum/integer/u128/u128#toString (; 88 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3280
   i32.const 3376
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
   i32.const 1984
   return
  end
  i32.const 944
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
     i32.const 528
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
  i32.const 3456
 )
 (func $../assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,../assembly/bindgen/JSONEncoder> (; 89 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 90 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $../assembly/bindgen/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,../assembly/bindgen/JSONEncoder> (; 91 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<~lib/typedarray/Uint8Array,../assembly/bindgen/JSONEncoder>
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
 (func $~lib/array/Array<u64>#__get (; 92 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
 (func $../assembly/bindgen/encode<~lib/array/Array<u64>,../assembly/bindgen/JSONEncoder> (; 93 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<u64,../assembly/bindgen/JSONEncoder>
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 94 ;) (param $0 i32)
  local.get $0
  i32.const 3584
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $../assembly/__tests__/bindgen/model/FooBar#_encode (; 95 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 848
  local.get $2
  call $../assembly/bindgen/encode<i32,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 2688
  local.get $2
  call $../assembly/bindgen/encode<u32,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i64.load offset=8
  i32.const 2720
  local.get $2
  call $../assembly/bindgen/encode<u64,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i64.load offset=16
  i32.const 2752
  local.get $2
  call $../assembly/bindgen/encode<u64,../assembly/bindgen/JSONEncoder>
  drop
  local.get $2
  i32.const 2784
  local.get $0
  i64.load offset=24
  call $~lib/util/number/itoa64
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $0
  i32.load8_u offset=32
  local.set $1
  local.get $2
  i32.const 2816
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $2
  i32.const 2528
  i32.const 2560
  local.get $1
  select
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load offset=36
  i32.const 2848
  local.get $2
  call $../assembly/bindgen/encode<~lib/string/String,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=40
  i32.const 2880
  local.get $2
  call $../assembly/bindgen/encode<~lib/typedarray/Uint8Array,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=44
  i32.const 2928
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=48
  i32.const 3184
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<u32>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=52
  i32.const 3216
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<i32>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=56
  i32.const 3248
  local.get $2
  call $../assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=60
  i32.const 3504
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<~lib/typedarray/Uint8Array>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=64
  i32.const 3552
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<u64>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 96 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 944
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $../assembly/__tests__/bindgen/model/FooBar#toJSON (; 97 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/__tests__/bindgen/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 98 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 99 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  local.get $0
  local.tee $3
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $0
  i32.gt_u
  if
   i32.const 960
   i32.const 1024
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
    i32.const 624
    i32.const 1024
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
    i32.const 624
    i32.const 1024
    i32.const 1755
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 10
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
 (func $~lib/typedarray/Uint8Array.wrap|trampoline (; 100 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~setArgumentsLength (; 101 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 102 ;) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 103 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $../assembly/__tests__/bindgen/model/FooBar#encode (; 104 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/__tests__/bindgen/model/FooBar#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 105 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 25
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 944
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (; 106 ;) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#isWhitespace (; 107 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (; 108 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 3616
   i32.const 3680
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (; 109 ;) (param $0 i32)
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
 (func $~lib/assemblyscript-json/JSON/JSON.Value#constructor (; 110 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 22
   call $~lib/rt/stub/__alloc
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 111 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 624
   i32.const 672
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#clear (; 112 ;) (param $0 i32)
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#constructor (; 113 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 28
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
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#constructor (; 114 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 8
   i32.const 27
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
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#push (; 115 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get (; 116 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/JSON/Handler#get:peek (; 117 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#__get
 )
 (func $~lib/rt/__instanceof (; 118 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/hash/hashStr (; 119 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find (; 120 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has (; 121 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#rehash (; 122 ;) (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#set (; 123 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#_set (; 124 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (; 125 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   local.get $0
   call $~lib/assemblyscript-json/JSON/Handler#get:peek
   local.tee $3
   i32.const 27
   call $~lib/rt/__instanceof
   if (result i32)
    local.get $3
   else
    i32.const 0
    i32.const 3776
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
    i32.const 29
    call $~lib/rt/__instanceof
   else
    i32.const 0
   end
   if
    local.get $0
    call $~lib/assemblyscript-json/JSON/Handler#get:peek
    local.tee $0
    i32.const 29
    call $~lib/rt/__instanceof
    if (result i32)
     local.get $0
    else
     i32.const 0
     i32.const 3776
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
 (func $~lib/string/String.UTF8.decodeUnsafe (; 126 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 736
   i32.const 735
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
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 127 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (; 128 ;) (param $0 i32) (result i32)
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
  i32.const 15
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
   i32.const 4256
   i32.const 3680
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCodePoint (; 129 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1114111
  i32.gt_u
  if
   i32.const 0
   i32.const 736
   i32.const 33
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
 (func $~lib/string/String.fromCharCode (; 130 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (; 131 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.set $1
  i32.const 1504
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1504
   return
  end
  i32.const 1536
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1536
   return
  end
  i32.const 4064
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 4064
   return
  end
  i32.const 4096
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1632
   return
  end
  i32.const 4128
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1696
   return
  end
  i32.const 4160
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1760
   return
  end
  i32.const 4192
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.get $1
  i32.eq
  if
   i32.const 1824
   return
  end
  i32.const 4224
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
  i32.const 4320
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
  i32.const 3680
  i32.const 255
  i32.const 4
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (; 132 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  i32.const 1504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 3904
   i32.const 3680
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
    i32.const 3984
    i32.const 3680
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1504
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
    i32.const 944
    call $~lib/array/Array<~lib/string/String>#join
    return
   else
    i32.const 1536
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseKey (; 133 ;) (param $0 i32)
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
  i32.const 2464
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 4400
   i32.const 3680
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/JSON.Value>#pop (; 134 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3136
   i32.const 1216
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (; 135 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2496
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
  i32.const 944
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
    i32.const 3584
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
      i32.const 1376
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3856
       i32.const 3680
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
   i32.const 3584
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 4448
    i32.const 3680
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
 (func $~lib/assemblyscript-json/JSON/JSON.Arr#constructor (; 136 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 4
   i32.const 29
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
 (func $~lib/assemblyscript-json/JSON/Handler#pushArray (; 137 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (; 138 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2960
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
  i32.const 944
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
    i32.const 3104
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
      i32.const 1376
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.ne
      if
       i32.const 3856
       i32.const 3680
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
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.ne
   if
    i32.const 4512
    i32.const 3680
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (; 139 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 1504
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
  i32.const 30
  call $~lib/rt/stub/__alloc
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#addValue
  i32.const 1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (; 140 ;) (param $0 i32) (param $1 i32)
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
     i32.const 4576
     local.get $1
     call $~lib/string/String.__concat
     i32.const 4624
     call $~lib/string/String.__concat
     i32.const 3680
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
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (; 141 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.const 31
  call $~lib/rt/stub/__alloc
  call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
  local.tee $0
  local.get $2
  i32.store8
  local.get $0
  call $~lib/assemblyscript-json/JSON/Handler#addValue
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (; 142 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2560
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
  i32.const 2528
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (; 143 ;) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $3
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 4656
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
   i32.const 32
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (; 144 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
  i32.const 2432
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   i32.const 2432
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   i32.const 33
   call $~lib/rt/stub/__alloc
   call $~lib/assemblyscript-json/JSON/JSON.Value#constructor
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (; 145 ;) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize (; 146 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 4688
   i32.const 3680
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (; 147 ;) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#get (; 148 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 4816
   i32.const 4880
   i32.const 111
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#get (; 149 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar> (; 150 ;) (result i32)
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
 (func $~lib/assemblyscript-json/JSON/JSON.Obj#has (; 151 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>#has
 )
 (func $../assembly/bindgen/isReallyNullable<i32> (; 152 ;) (result i32)
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
 (func $../assembly/bindgen/decode<i32,~lib/assemblyscript-json/JSON/JSON.Obj> (; 153 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 32
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5296
   call $~lib/string/String.__concat
   i32.const 5328
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $../assembly/bindgen/isReallyNullable<u32> (; 154 ;) (result i32)
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
 (func $../assembly/bindgen/decode<u32,~lib/assemblyscript-json/JSON/JSON.Obj> (; 155 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<u32>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5392
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5392
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 32
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5392
   call $~lib/string/String.__concat
   i32.const 5328
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $../assembly/bindgen/isReallyNullable<u64> (; 156 ;) (result i32)
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
 (func $~lib/util/string/isSpace (; 157 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 5760
  i32.lt_u
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
 (func $~lib/util/string/strtol<i64> (; 158 ;) (param $0 i32) (param $1 i32) (result i64)
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
 (func $~lib/number/U64.parseInt (; 159 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
 )
 (func $../assembly/bindgen/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj> (; 160 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<u64>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5424
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5424
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5424
   call $~lib/string/String.__concat
   i32.const 5456
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/U64.parseInt
 )
 (func $../assembly/bindgen/isReallyNullable<i64> (; 161 ;) (result i32)
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
 (func $~lib/number/I64.parseInt (; 162 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
 )
 (func $../assembly/bindgen/decode<i64,~lib/assemblyscript-json/JSON/JSON.Obj> (; 163 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<i64>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5600
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5600
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 5456
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $../assembly/bindgen/decode<bool,~lib/assemblyscript-json/JSON/JSON.Obj> (; 164 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    i32.const 4928
    i32.const 5632
    call $~lib/string/String.__concat
    i32.const 4992
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 31
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5632
   call $~lib/string/String.__concat
   i32.const 5664
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 175
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 31
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 177
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  i32.load8_u
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/string/String> (; 165 ;) (result i32)
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
 (func $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj> (; 166 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5712
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5712
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/typedarray/Uint8Array> (; 167 ;) (result i32)
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
 (func $../assembly/bindgen/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj> (; 168 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/typedarray/Uint8Array>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5808
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5808
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $../assembly/runtime/base64/base64.decode
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>> (; 169 ;) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 170 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 13
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
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/string/String>> (; 171 ;) (result i32)
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
 (func $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value> (; 172 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5712
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5712
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $../assembly/bindgen/decodeArray<~lib/string/String> (; 173 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Value> (; 174 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/string/String>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6048
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6048
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<~lib/string/String>
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 175 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/decodeArray<~lib/array/Array<~lib/string/String>> (; 176 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 177 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5856
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<~lib/string/String>>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5856
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<~lib/array/Array<~lib/string/String>>
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<u32>> (; 178 ;) (result i32)
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
 (func $~lib/array/Array<u32>#constructor (; 179 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 14
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
 (func $../assembly/bindgen/decode<u32,~lib/assemblyscript-json/JSON/JSON.Value> (; 180 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<u32>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5392
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5392
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 32
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5392
   call $~lib/string/String.__concat
   i32.const 5328
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $~lib/array/Array<u32>#push (; 181 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/decodeArray<u32> (; 182 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<u32,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<u32>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 183 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u32>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6128
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u32>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6128
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<u32>
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<i32>> (; 184 ;) (result i32)
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
 (func $../assembly/bindgen/decode<i32,~lib/assemblyscript-json/JSON/JSON.Value> (; 185 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 32
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5296
   call $~lib/string/String.__concat
   i32.const 5328
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $../assembly/bindgen/decodeArray<i32> (; 186 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<i32,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<i32>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 187 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<i32>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6176
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<i32>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6176
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<i32>
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128> (; 188 ;) (result i32)
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
 (func $~lib/array/Array<u8>#__get (; 189 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
 (func $~lib/as-bignum/globals/__multi3 (; 190 ;) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
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
 (func $~lib/as-bignum/utils/atou128 (; 191 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 6256
   i32.const 6304
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
  i32.const 6464
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
 (func $../assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj> (; 192 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6224
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6224
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/as-bignum/utils/atou128
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>> (; 193 ;) (result i32)
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
 (func $../assembly/bindgen/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Value> (; 194 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/typedarray/Uint8Array>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5808
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/typedarray/Uint8Array>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5808
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call $../assembly/runtime/base64/base64.decode
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 195 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/decodeArray<~lib/typedarray/Uint8Array> (; 196 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 197 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6496
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/typedarray/Uint8Array>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6496
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<~lib/typedarray/Uint8Array>
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<u64>> (; 198 ;) (result i32)
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
 (func $~lib/array/Array<u64>#constructor (; 199 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 17
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
 (func $../assembly/bindgen/decode<u64,~lib/assemblyscript-json/JSON/JSON.Value> (; 200 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<u64>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5424
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5424
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5424
   call $~lib/string/String.__concat
   i32.const 5456
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/U64.parseInt
 )
 (func $~lib/array/Array<u64>#push (; 201 ;) (param $0 i32) (param $1 i64) (result i32)
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
 (func $../assembly/bindgen/decodeArray<u64> (; 202 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
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
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<u64,~lib/assemblyscript-json/JSON/JSON.Value>
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
 (func $../assembly/bindgen/decode<~lib/array/Array<u64>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 203 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u64>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6592
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6592
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<u64>
 )
 (func $../assembly/__tests__/bindgen/model/FooBar#_decode (; 204 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.const 848
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 848
   call $../assembly/bindgen/decode<i32,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 0
  end
  i32.store
  local.get $0
  local.get $1
  i32.const 2688
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2688
   call $../assembly/bindgen/decode<u32,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 1
  end
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 2720
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2720
   call $../assembly/bindgen/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i64.const 4294967297
  end
  i64.store offset=8
  local.get $0
  local.get $1
  i32.const 2752
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2752
   call $../assembly/bindgen/decode<u64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i64.load offset=16
  end
  i64.store offset=16
  local.get $0
  local.get $1
  i32.const 2784
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i64)
   local.get $1
   i32.const 2784
   call $../assembly/bindgen/decode<i64,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i64.const -64
  end
  i64.store offset=24
  local.get $0
  local.get $1
  i32.const 2816
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2816
   call $../assembly/bindgen/decode<bool,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   local.get $0
   i32.load8_u offset=32
  end
  i32.store8 offset=32
  local.get $0
  local.tee $2
  local.get $1
  i32.const 2848
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2848
   call $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  else
   i32.const 784
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
  i32.const 2880
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2880
   call $../assembly/bindgen/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 2928
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 2928
   call $../assembly/bindgen/decode<~lib/array/Array<~lib/array/Array<~lib/string/String>>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 3184
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3184
   call $../assembly/bindgen/decode<~lib/array/Array<u32>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 3216
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3216
   call $../assembly/bindgen/decode<~lib/array/Array<i32>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 3248
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3248
   call $../assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 3504
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3504
   call $../assembly/bindgen/decode<~lib/array/Array<~lib/typedarray/Uint8Array>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 3552
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 3552
   call $../assembly/bindgen/decode<~lib/array/Array<u64>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
 (func $../assembly/__tests__/bindgen/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj> (; 205 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.set $0
  local.get $0
  call $../assembly/__tests__/bindgen/model/FooBar#_decode
 )
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array> (; 206 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 4960
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 4960
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 4960
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 11
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $../assembly/__tests__/bindgen/model/Nullables#constructor (; 207 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 35
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
 (func $../assembly/__tests__/bindgen/model/Nullables#_encode (; 208 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 6768
  local.get $2
  call $../assembly/bindgen/encode<~lib/string/String,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=4
  i32.const 6224
  local.get $2
  call $../assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,../assembly/bindgen/JSONEncoder>
  drop
  local.get $0
  i32.load offset=8
  i32.const 6800
  local.get $2
  call $../assembly/bindgen/encode<~lib/typedarray/Uint8Array,../assembly/bindgen/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $../assembly/__tests__/bindgen/model/Nullables#encode (; 209 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/__tests__/bindgen/model/Nullables#_encode
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/Nullables> (; 210 ;) (result i32)
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
 (func $../assembly/__tests__/bindgen/model/Nullables#_decode (; 211 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 6768
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6768
   call $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 6224
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6224
   call $../assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/assemblyscript-json/JSON/JSON.Obj>
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
  i32.const 6800
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 6800
   call $../assembly/bindgen/decode<~lib/typedarray/Uint8Array,~lib/assemblyscript-json/JSON/JSON.Obj>
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
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/Nullables,~lib/typedarray/Uint8Array> (; 212 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/Nullables>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6848
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/Nullables>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6848
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 6848
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 35
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/Nullables#_decode
 )
 (func $../assembly/bindgen/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 213 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $../assembly/bindgen/encode<u64,../assembly/bindgen/JSONEncoder>
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
 (func $../assembly/bindgen/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline (; 214 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
 )
 (func $../assembly/bindgen/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array> (; 215 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u64>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6592
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<u64>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6592
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<u64>
 )
 (func $../assembly/bindgen/encode<i32,~lib/typedarray/Uint8Array>|trampoline (; 216 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
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
 (func $../assembly/bindgen/decode<i32,~lib/typedarray/Uint8Array> (; 217 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<i32>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5296
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 32
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5296
   call $~lib/string/String.__concat
   i32.const 5328
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 188
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 190
   i32.const 25
   call $~lib/builtins/abort
   unreachable
  end
  i64.load
  i32.wrap_i64
 )
 (func $../assembly/bindgen/encode<i64,~lib/typedarray/Uint8Array>|trampoline (; 218 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
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
 (func $../assembly/bindgen/decode<i64,~lib/typedarray/Uint8Array> (; 219 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<i64>
    drop
    i32.const 0
    if
     i32.const 4928
     i32.const 5600
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
     i32.const 161
     i32.const 10
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5600
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 5600
   call $~lib/string/String.__concat
   i32.const 5456
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 183
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $2
  else
   i32.const 0
   i32.const 4752
   i32.const 184
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/number/I64.parseInt
 )
 (func $../assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline (; 220 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
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
 (func $../assembly/bindgen/decode<~lib/string/String,~lib/typedarray/Uint8Array> (; 221 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/string/String>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 5712
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/string/String>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 5712
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
 )
 (func $../assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline (; 222 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
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
 (func $../assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array> (; 223 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6224
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/as-bignum/integer/u128/u128>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6224
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 4752
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
   i32.const 30
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5744
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 131
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 30
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 132
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 0
  call $~lib/as-bignum/utils/atou128
 )
 (func $../assembly/__tests__/bindgen/test/runTest (; 224 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 576
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  i32.const 0
  call $../assembly/__tests__/bindgen/model/FooBar#constructor
  local.tee $0
  local.tee $2
  i32.const 2
  i32.const 2
  i32.const 14
  i32.const 816
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
  i32.const 848
  i32.store offset=36
  i32.const 880
  call $../assembly/runtime/base64/base64.decode
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
  i32.const 13
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.const 2
  i32.const 12
  i32.const 1120
  call $~lib/rt/__allocArray
  i32.store
  local.get $2
  i32.const 1
  i32.const 2
  i32.const 12
  i32.const 1184
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
  local.set $2
  local.get $0
  i32.load offset=60
  drop
  local.get $0
  local.get $2
  i32.store offset=60
  local.get $0
  i32.load offset=60
  i32.const 0
  i32.const 880
  call $../assembly/runtime/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=60
  i32.const 1
  i32.const 880
  call $../assembly/runtime/base64/base64.decode
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  i32.const 2
  i32.const 3
  i32.const 17
  i32.const 1312
  call $~lib/rt/__allocArray
  local.set $1
  local.get $0
  i32.load offset=64
  drop
  local.get $0
  local.get $1
  i32.store offset=64
  i32.const 1344
  local.get $0
  call $../assembly/__tests__/bindgen/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  i32.const 6640
  local.get $0
  call $../assembly/__tests__/bindgen/model/FooBar#encode
  local.tee $2
  i32.const 944
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>
  local.tee $1
  call $../assembly/__tests__/bindgen/model/FooBar#toJSON
  call $~lib/string/String.__concat
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  local.get $2
  i32.const 944
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>
  local.set $2
  local.get $1
  call $../assembly/__tests__/bindgen/model/FooBar#toJSON
  local.get $2
  call $../assembly/__tests__/bindgen/model/FooBar#toJSON
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6672
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
   i32.const 6672
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
   i32.const 6672
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=40
  call $../assembly/runtime/base64/base64.encode
  local.get $1
  i32.load offset=40
  call $../assembly/runtime/base64/base64.encode
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6672
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  call $../assembly/runtime/base64/base64.encode
  local.get $1
  i32.load offset=60
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
  call $../assembly/runtime/base64/base64.encode
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6672
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
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6672
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
   i32.const 6672
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
   i32.const 6672
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $../assembly/__tests__/bindgen/model/Nullables#constructor
  local.tee $0
  call $../assembly/__tests__/bindgen/model/Nullables#encode
  i32.load
  local.tee $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  local.get $0
  call $../assembly/__tests__/bindgen/model/Nullables#encode
  i32.const 944
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/Nullables,~lib/typedarray/Uint8Array>
  local.tee $0
  i32.load
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 6672
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2560
  i32.const 2528
  local.get $0
  i32.load offset=4
  select
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  local.get $0
  i32.load offset=8
  if
   i32.const 6896
   i32.const 6672
   i32.const 55
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $../assembly/__tests__/bindgen/model/FooBar#constructor
  local.tee $0
  local.tee $1
  i32.const 0
  i32.const 2
  i32.const 13
  i32.const 6992
  call $~lib/rt/__allocArray
  local.set $2
  local.get $1
  i32.load offset=44
  drop
  local.get $2
  i32.store offset=44
  local.get $0
  call $../assembly/__tests__/bindgen/model/FooBar#encode
  i32.const 944
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>
  i32.load offset=44
  i32.load offset=12
  local.get $0
  i32.load offset=44
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 6672
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 17
  i32.const 7008
  call $~lib/rt/__allocArray
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
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
   i32.const 6672
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  i32.const 17
  i32.const 7040
  call $~lib/rt/__allocArray
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<~lib/array/Array<u64>,~lib/typedarray/Uint8Array>
  i32.load offset=12
  if
   i32.const 0
   i32.const 6672
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 42
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<i32,~lib/typedarray/Uint8Array>
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 6672
   i32.const 65
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i64.const 42
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<i64,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<i64,~lib/typedarray/Uint8Array>
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 6672
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 7056
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<~lib/string/String,~lib/typedarray/Uint8Array>
  i32.const 7056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 7104
   i32.const 6672
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
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>|trampoline
  i32.const 944
  call $../assembly/bindgen/decode<~lib/as-bignum/integer/u128/u128,~lib/typedarray/Uint8Array>
  i64.load
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 6672
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7168
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
 )
 (func $../assembly/bindgen/getInput (; 225 ;) (result i32)
  (local $0 i32)
  (local $1 i64)
  i64.const 0
  call $../assembly/runtime/env/imports/env.input
  i64.const 0
  call $../assembly/runtime/env/imports/env.register_len
  local.tee $1
  i64.const 4294967295
  i64.eq
  if
   call $../assembly/runtime/env/imports/env.panic
  end
  i64.const 0
  i32.const 0
  local.get $1
  i32.wrap_i64
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/runtime/env/imports/env.read_register
  local.get $0
  call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 4752
   i32.const 64
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>> (; 226 ;) (result i32)
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
 (func $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#constructor (; 227 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 38
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
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Value> (; 228 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 4960
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 4960
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 4960
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 11
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#push (; 229 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/decodeArray<../assembly/__tests__/bindgen/model/FooBar> (; 230 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#push
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
 (func $../assembly/bindgen/decode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 231 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 7248
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 7248
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<../assembly/__tests__/bindgen/model/FooBar>
 )
 (func $../assembly/__tests__/bindgen/main/convertFoobars~anonymous|0 (; 232 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 4
  i32.const 36
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#map<../assembly/__tests__/bindgen/model/ContainerClass> (; 233 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 37
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
 (func $~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>#__get (; 234 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,../assembly/bindgen/JSONEncoder> (; 235 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $../assembly/__tests__/bindgen/model/FooBar#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
 )
 (func $../assembly/__tests__/bindgen/model/ContainerClass#_encode (; 236 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 7376
  local.get $2
  call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,../assembly/bindgen/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>,~lib/typedarray/Uint8Array> (; 237 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>#__get
     local.set $3
     local.get $2
     local.set $4
     local.get $3
     if
      local.get $3
      i32.const 0
      local.get $4
      call $../assembly/__tests__/bindgen/model/ContainerClass#_encode
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
 (func $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline (; 238 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>,~lib/typedarray/Uint8Array>
 )
 (func $../assembly/bindgen/value_return (; 239 ;) (param $0 i64) (param $1 i64)
  local.get $0
  local.get $1
  call $../assembly/runtime/env/imports/env.value_return
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_convertFoobars (; 240 ;)
  (local $0 i32)
  call $../assembly/bindgen/getInput
  i32.const 7216
  call $../assembly/bindgen/decode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.const 1
  call $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#map<../assembly/__tests__/bindgen/model/ContainerClass>
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/ContainerClass>,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/bindgen/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 241 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/string/String>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 6048
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/string/String>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 6048
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<~lib/string/String>
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_getStringArrayLength (; 242 ;)
  (local $0 i32)
  i32.const 7408
  call $../assembly/bindgen/getInput
  i32.const 2928
  call $../assembly/bindgen/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/JSON.Obj>
  local.tee $0
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $~lib/string/String.__concat
  call $../assembly/runtime/logging/logging.log<~lib/string/String>
  local.get $0
  i32.load offset=12
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<i32,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/ContainerClass> (; 243 ;) (result i32)
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
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Obj> (; 244 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 4960
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/FooBar>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 4960
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 4960
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 68
  i32.const 11
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/FooBar#decode<~lib/assemblyscript-json/JSON/JSON.Obj>
 )
 (func $../assembly/__tests__/bindgen/model/ContainerClass#_decode (; 245 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 7376
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 7376
   call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/FooBar,~lib/assemblyscript-json/JSON/JSON.Obj>
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
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/ContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj> (; 246 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/ContainerClass>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 7520
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/ContainerClass>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 7520
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 7520
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 36
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/ContainerClass#_decode
 )
 (func $../assembly/__tests__/bindgen/main/rewrapFoobar (; 247 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 39
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.tee $2
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 40
  i32.const 0
  call $~lib/rt/__allocArray
  local.tee $4
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 38
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
 (func $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#__get (; 248 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#__get (; 249 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 960
   i32.const 1216
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
   i32.const 2992
   i32.const 1216
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,../assembly/bindgen/JSONEncoder> (; 250 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#__get
     i32.const 0
     local.get $2
     call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,../assembly/bindgen/JSONEncoder>
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
 (func $../assembly/bindgen/encode<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>,../assembly/bindgen/JSONEncoder> (; 251 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     call $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#__get
     i32.const 0
     local.get $2
     call $../assembly/bindgen/encode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,../assembly/bindgen/JSONEncoder>
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
 (func $../assembly/__tests__/bindgen/model/AnotherContainerClass#_encode (; 252 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  if
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $2
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  i32.load
  i32.const 7216
  local.get $2
  call $../assembly/bindgen/encode<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>,../assembly/bindgen/JSONEncoder>
  drop
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $2
 )
 (func $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline (; 253 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $../assembly/__tests__/bindgen/model/AnotherContainerClass#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_rewrapFoobar (; 254 ;)
  (local $0 i32)
  call $../assembly/bindgen/getInput
  i32.const 7472
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/ContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj>
  call $../assembly/__tests__/bindgen/main/rewrapFoobar
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/AnotherContainerClass,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/AnotherContainerClass> (; 255 ;) (result i32)
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
 (func $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>> (; 256 ;) (result i32)
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
 (func $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#constructor (; 257 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 40
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
 (func $../assembly/bindgen/decode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Value> (; 258 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 7248
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 7248
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<../assembly/__tests__/bindgen/model/FooBar>
 )
 (func $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#push (; 259 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $../assembly/bindgen/decodeArray<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>> (; 260 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 29
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5968
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#constructor
  local.set $2
  local.get $0
  local.tee $1
  i32.const 29
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $1
  else
   i32.const 0
   i32.const 4752
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
    i32.const 944
    call $../assembly/bindgen/decode<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>,~lib/assemblyscript-json/JSON/JSON.Value>
    call $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#push
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
 (func $../assembly/bindgen/decode<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>,~lib/assemblyscript-json/JSON/JSON.Obj> (; 261 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 7632
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 7632
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
  call $../assembly/bindgen/decodeArray<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>
 )
 (func $../assembly/__tests__/bindgen/model/AnotherContainerClass#_decode (; 262 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  local.get $1
  i32.const 7216
  call $~lib/assemblyscript-json/JSON/JSON.Obj#has
  if (result i32)
   local.get $1
   i32.const 7216
   call $../assembly/bindgen/decode<~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>,~lib/assemblyscript-json/JSON/JSON.Obj>
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
 (func $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/AnotherContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj> (; 263 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.tee $2
  if (result i32)
   local.get $2
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 944
   call $~lib/string/String.__ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.tee $2
   i32.const 27
   call $~lib/rt/__instanceof
   i32.eqz
   if
    i32.const 0
    i32.const 4752
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
    call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/AnotherContainerClass>
    if (result i32)
     i32.const 1
    else
     i32.const 0
    end
    if
     i32.const 0
     i32.const 4752
     i32.const 164
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    else
     i32.const 4928
     i32.const 7568
     call $~lib/string/String.__concat
     i32.const 4992
     call $~lib/string/String.__concat
     i32.const 4752
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
   i32.const 33
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  if
   call $../assembly/bindgen/isReallyNullable<../assembly/__tests__/bindgen/model/AnotherContainerClass>
   i32.eqz
   if
    i32.const 5040
    local.get $1
    call $~lib/string/String.__concat
    i32.const 5072
    call $~lib/string/String.__concat
    i32.const 7568
    call $~lib/string/String.__concat
    i32.const 5120
    call $~lib/string/String.__concat
    i32.const 4752
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
   i32.const 27
   call $~lib/rt/__instanceof
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5168
   local.get $1
   call $~lib/string/String.__concat
   i32.const 5072
   call $~lib/string/String.__concat
   i32.const 7568
   call $~lib/string/String.__concat
   i32.const 5216
   call $~lib/string/String.__concat
   i32.const 4752
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 39
  call $~lib/rt/stub/__alloc
  local.get $2
  local.tee $0
  i32.const 27
  call $~lib/rt/__instanceof
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 4752
   i32.const 222
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  call $../assembly/__tests__/bindgen/model/AnotherContainerClass#_decode
 )
 (func $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>|trampoline (; 264 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 944
    local.set $1
   end
   i32.const 0
   call $../assembly/bindgen/JSONEncoder#constructor
   local.set $2
  end
  local.get $0
  if
   local.get $0
   local.get $1
   local.get $2
   call $../assembly/__tests__/bindgen/model/FooBar#_encode
   drop
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_unwrapFoobar (; 265 ;)
  (local $0 i32)
  call $../assembly/bindgen/getInput
  i32.const 7472
  call $../assembly/bindgen/decode<../assembly/__tests__/bindgen/model/AnotherContainerClass,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>>#__get
  i32.const 0
  call $~lib/array/Array<../assembly/__tests__/bindgen/model/FooBar>#__get
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_stringOrNull (; 266 ;)
  (local $0 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_stringAliasTest (; 267 ;)
  (local $0 i32)
  call $../assembly/bindgen/getInput
  i32.const 6768
  call $../assembly/bindgen/decode<~lib/string/String,~lib/assemblyscript-json/JSON/JSON.Obj>
  i32.const 7792
  call $~lib/string/String.__concat
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<~lib/string/String,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_classOrNull (; 268 ;)
  (local $0 i32)
  i32.const 0
  call $../assembly/__tests__/bindgen/model/FooBar#constructor
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $../assembly/__tests__/bindgen/test/__wrapper_classAndNull (; 269 ;)
  (local $0 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  i32.const 944
  i32.const 0
  call $../assembly/bindgen/encode<../assembly/__tests__/bindgen/model/FooBar,~lib/typedarray/Uint8Array>|trampoline
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $../assembly/bindgen/value_return
 )
 (func $~start (; 270 ;)
  call $start:../assembly/index
  call $start:~lib/assemblyscript-json/index
 )
)
