; ModuleID = 'test2.ll'
source_filename = "test2.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 5
  %sub = sub nsw i32 %a, 3
  %cmp = icmp slt i32 %add, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ 5, %if.then ], [ 10, %if.else ]
  %add1 = add nsw i32 %a, 10
  %cmp2 = icmp sgt i32 %add1, 10
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %add4 = add nsw i32 %x.0, 5
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %add6 = add nsw i32 %x.0, 10
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  ret i32 %add1
}