; ModuleID = 'test3.ll'
source_filename = "test3.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 10
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %a, 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %x.0 = phi i32 [ 5, %if.then2 ], [ 6, %if.else ]
  br label %if.end4

if.else3:                                         ; preds = %entry
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  %x.1 = phi i32 [ %x.0, %if.end ], [ 5, %if.else3 ]
  %add5 = add nsw i32 %x.1, 10
  ret i32 %add5
}
