; ModuleID = 'test5.ll'
source_filename = "test5.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ 7, %if.then ], [ 5, %if.else ]
  %cmp1 = icmp sgt i32 %a, 15
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.end
  %add3 = add nsw i32 %x.0, 2
  br label %if.end6

if.else4:                                         ; preds = %if.end
  %add5 = add nsw i32 %x.0, 3
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2
  %y.0 = phi i32 [ %add3, %if.then2 ], [ %add5, %if.else4 ]
  ret i32 %y.0
}
