define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 10, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %b, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 8, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %x, align 4
  %add1 = add nsw i32 %2, 2
  store i32 %add1, i32* %y, align 4
  %3 = load i32, i32* %y, align 4
  ret i32 %3
}
