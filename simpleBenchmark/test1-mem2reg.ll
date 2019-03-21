; ModuleID = 'test1.ll'
source_filename = "test1.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 10, 5
  %sub = sub nsw i32 10, 3
  %cmp = icmp slt i32 %add, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add1 = add nsw i32 %sub, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %add2 = add nsw i32 %sub, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ %add1, %if.then ], [ %add2, %if.else ]
  ret i32 %x.0
}
