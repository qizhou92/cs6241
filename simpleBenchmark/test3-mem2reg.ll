; ModuleID = 'test3.ll'
source_filename = "test3.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 10
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %a, 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %add3 = add nsw i32 %a, 3
  br label %if.end

if.else:                                          ; preds = %if.then
  %add4 = add nsw i32 %a, 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %x.0 = phi i32 [ %add3, %if.then2 ], [ %add4, %if.else ]
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %x.1 = phi i32 [ %x.0, %if.end ], [ 0, %entry ]
  ret i32 %x.1
}
