(module
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (import "index" "getArray" (func $assembly/index/getArray (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $~lib/memory/__data_end i32 (i32.const 140))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16524))
 (global $~lib/memory/__heap_base i32 (i32.const 16524))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "ASbubbleSort" (func $assembly/index/ASbubbleSort))
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "memory" (memory $0))
 (func $~lib/typedarray/Int32Array#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Int32Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 724
   i32.const 64
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
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 735
   i32.const 64
   call $~lib/builtins/abort
   unreachable
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
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16544
   i32.const 16592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/ASbubbleSort (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  call $assembly/index/getArray
  local.tee $0
  i32.store
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   i32.lt_s
   local.set $2
   local.get $2
   if
    i32.const 0
    local.set $3
    loop $for-loop|1
     local.get $3
     local.get $0
     call $~lib/typedarray/Int32Array#get:length
     local.get $1
     i32.sub
     i32.const 1
     i32.sub
     i32.lt_s
     local.set $4
     local.get $4
     if
      local.get $0
      local.get $3
      call $~lib/typedarray/Int32Array#__get
      local.get $0
      local.get $3
      i32.const 1
      i32.add
      call $~lib/typedarray/Int32Array#__get
      i32.gt_s
      if
       local.get $0
       local.get $3
       i32.const 1
       i32.add
       call $~lib/typedarray/Int32Array#__get
       local.set $5
       local.get $0
       local.get $3
       i32.const 1
       i32.add
       local.get $0
       local.get $3
       call $~lib/typedarray/Int32Array#__get
       call $~lib/typedarray/Int32Array#__set
       local.get $0
       local.get $3
       local.get $5
       call $~lib/typedarray/Int32Array#__set
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
)
