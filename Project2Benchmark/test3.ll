define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %b = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 0, i32* %x, align 4
  store i32 2, i32* %y, align 4
  store i32 3, i32* %z, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp sgt i32 %2, 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i32 5, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 6, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %3 = load i32, i32* %a.addr, align 4
  %cmp3 = icmp sgt i32 %3, 10
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %y, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %y, align 4
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %5 = load i32, i32* %x, align 4
  %add6 = add nsw i32 %5, 3
  store i32 %add6, i32* %z, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then4
  %6 = load i32, i32* %a.addr, align 4
  %cmp8 = icmp sgt i32 %6, 15
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.end7
  %7 = load i32, i32* %y, align 4
  %add10 = add nsw i32 %7, 2
  store i32 %add10, i32* %y, align 4
  br label %if.end13

if.else11:                                        ; preds = %if.end7
  %8 = load i32, i32* %z, align 4
  %9 = load i32, i32* %x, align 4
  %add12 = add nsw i32 %8, %9
  store i32 %add12, i32* %z, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %10 = load i32, i32* %x, align 4
  %add15 = add nsw i32 %10, 10
  store i32 %add15, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}