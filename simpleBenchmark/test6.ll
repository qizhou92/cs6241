define i32 @f(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %p = alloca i32*, align 8
  %x = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32* %a.addr, i32** %p, align 8
  %0 = load i32*, i32** %p, align 8
  %1 = load i32, i32* %0, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32*, i32** %p, align 8
  store i32 %add, i32* %2, align 4
  store i32 5, i32* %x, align 4
  %3 = load i32*, i32** %p, align 8
  %cmp = icmp ne i32* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %a.addr, align 4
  %add1 = add nsw i32 %4, 3
  store i32 %add1, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %x, align 4
  ret i32 %6
}
