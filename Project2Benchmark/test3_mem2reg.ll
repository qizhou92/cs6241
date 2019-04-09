; ModuleID = 'test3.ll'
source_filename = "test3.ll"

define i32 @f(i32 %a) {
entry:
  %add = add nsw i32 %a, 10
  %cmp = icmp sgt i32 %a, 10
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %a, 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %x.0 = phi i32 [ 5, %if.then2 ], [ 6, %if.else ]
  %cmp3 = icmp sgt i32 %a, 10
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %inc = add nsw i32 2, 1
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %add6 = add nsw i32 %x.0, 3
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then4
  %y.0 = phi i32 [ %inc, %if.then4 ], [ 2, %if.else5 ]
  %z.0 = phi i32 [ 3, %if.then4 ], [ %add6, %if.else5 ]
  %cmp8 = icmp sgt i32 %a, 15
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.end7
  %add10 = add nsw i32 %y.0, 2
  br label %if.end13

if.else11:                                        ; preds = %if.end7
  %add12 = add nsw i32 %z.0, %x.0
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %x.1 = phi i32 [ %x.0, %if.end13 ], [ 0, %entry ]
  %add15 = add nsw i32 %x.1, 10
  ret i32 %add15
}
