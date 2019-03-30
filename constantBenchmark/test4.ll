define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 8, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp sgt i32 %2, 5
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %b, align 4
  %add3 = add nsw i32 %3, 5
  store i32 %add3, i32* %b, align 4
  br label %if.end7

if.else4:                                         ; preds = %if.end
  %4 = load i32, i32* %x, align 4
  %add5 = add nsw i32 %4, 3
  store i32 %add5, i32* %y, align 4
  %5 = load i32, i32* %y, align 4
  %add6 = add nsw i32 %5, 5
  store i32 %add6, i32* %x, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.then2
  %6 = load i32, i32* %x, align 4
  ret i32 %6
}
