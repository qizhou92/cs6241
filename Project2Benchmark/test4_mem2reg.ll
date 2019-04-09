; ModuleID = 'test4.ll'
source_filename = "test4.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add1 = add nsw i32 10, %a
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 10, %a
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp2 = icmp sgt i32 %a, 15
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  br label %if.end5

if.else4:                                         ; preds = %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %y.0 = phi i32 [ 10, %if.then3 ], [ 12, %if.else4 ]
  %add6 = add nsw i32 %y.0, 12
  %cmp7 = icmp sgt i32 %add6, 12
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end5
  %add9 = add nsw i32 %add6, %y.0
  br label %if.end12

if.else10:                                        ; preds = %if.end5
  %sub11 = sub nsw i32 %add6, %y.0
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  %z.0 = phi i32 [ %add9, %if.then8 ], [ %sub11, %if.else10 ]
  %add13 = add nsw i32 %z.0, 7
  ret i32 %add13
}
