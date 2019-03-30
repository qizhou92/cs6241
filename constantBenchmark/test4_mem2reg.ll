; ModuleID = 'test4.ll'
source_filename = "test4.ll"

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
  %x.0 = phi i32 [ 10, %if.then ], [ 8, %if.else ]
  %cmp1 = icmp sgt i32 %a, 5
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.end
  %add3 = add nsw i32 %add, 5
  br label %if.end7

if.else4:                                         ; preds = %if.end
  %add5 = add nsw i32 %x.0, 3
  %add6 = add nsw i32 %add5, 5
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.then2
  %x.1 = phi i32 [ %x.0, %if.then2 ], [ %add6, %if.else4 ]
  ret i32 %x.1
}
