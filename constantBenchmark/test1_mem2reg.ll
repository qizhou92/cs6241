; ModuleID = 'test1.ll'
source_filename = "test1.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 10, 5
  %cmp = icmp slt i32 %add, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ 10, %if.then ], [ 8, %if.else ]
  %add1 = add nsw i32 %x.0, 2
  ret i32 %add1
}
