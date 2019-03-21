define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %add1 = add nsw i32 %2, 3
  store i32 %add1, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4
  %add2 = add nsw i32 %3, 5
  store i32 %add2, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %a.addr, align 4
  %cmp3 = icmp sgt i32 %4, 15
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %x, align 4
  %add5 = add nsw i32 %5, 2
  store i32 %add5, i32* %x, align 4
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %6 = load i32, i32* %x, align 4
  %add7 = add nsw i32 %6, 3
  store i32 %add7, i32* %x, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4
  %7 = load i32, i32* %x, align 4
  ret i32 %7
}
