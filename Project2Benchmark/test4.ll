define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %0, 10
  store i32 %add, i32* %b, align 4
  %1 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %add1 = add nsw i32 10, %2
  store i32 %add1, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 10, %3
  store i32 %sub, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 15, i32* %y, align 4
  %4 = load i32, i32* %a.addr, align 4
  %5 = load i32, i32* %y, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  store i32 10, i32* %y, align 4
  br label %if.end5

if.else4:                                         ; preds = %if.end
  store i32 12, i32* %y, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %6 = load i32, i32* %y, align 4
  %add6 = add nsw i32 %6, 12
  store i32 %add6, i32* %z, align 4
  %7 = load i32, i32* %z, align 4
  %cmp7 = icmp sgt i32 %7, 12
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end5
  %8 = load i32, i32* %z, align 4
  %9 = load i32, i32* %y, align 4
  %add9 = add nsw i32 %8, %9
  store i32 %add9, i32* %z, align 4
  br label %if.end12

if.else10:                                        ; preds = %if.end5
  %10 = load i32, i32* %z, align 4
  %11 = load i32, i32* %y, align 4
  %sub11 = sub nsw i32 %10, %11
  store i32 %sub11, i32* %z, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  %12 = load i32, i32* %z, align 4
  %add13 = add nsw i32 %12, 7
  store i32 %add13, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  ret i32 %13
}
