; ModuleID = 'test51.ll'
source_filename = "test51.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add1 = add nsw i32 %a, 3
  br label %if.end

if.else:                                          ; preds = %entry
  %add2 = add nsw i32 %a, 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ %add1, %if.then ], [ %add2, %if.else ]
  %cmp3 = icmp sgt i32 %a, 15
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.end
  %add5 = add nsw i32 %x.0, 2
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %add7 = add nsw i32 %x.0, 3
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4
  %x.1 = phi i32 [ %add5, %if.then4 ], [ %add7, %if.else6 ]
  ret i32 %x.1
}
