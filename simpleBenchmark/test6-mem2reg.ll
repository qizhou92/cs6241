; ModuleID = 'test6.ll'
source_filename = "test6.ll"

define i32 @f(i32 %a) {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %a.addr, align 4
  %cmp = icmp ne i32* %a.addr, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %add1 = add nsw i32 %1, 3
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %2, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ %add1, %if.then ], [ %sub, %if.else ]
  ret i32 %x.0
}
