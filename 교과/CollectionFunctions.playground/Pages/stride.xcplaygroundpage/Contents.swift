//: [Previous](@previous)
/*:
 ![stride](strideDic.png)
 */
//: # stride
//: ## stride(from:to:by)
/***************************************************
 func stride<T>(from: T, to: T, by: T.Stride)
 - from 값으로 시작하여 stride 값만큼 증가하면서 to 값을 포함하지 않는 (숫자 부호에 따라 작거나 큰) 숫자까지 반복
 
 e.g. [start, start + stride, start + stride * 2, ..., until less than end]
 ***************************************************/
print("\n---------- [ from to by ] ----------\n")

print("- example1 -")
let strideThrough = stride(from: 0, to: 6, by: 3)
var iterator = strideThrough.makeIterator()
while let element = iterator.next() {   //stride를 쓰면 next를 사용할 수 있게 되고 하나씩 차례대로 받아올 수 있음
  print(element)
}


print("\n- example2 -")
for i in stride(from: 0, to: 10, by: 2) {
  print(i, terminator: " ")
}
print()


print("\n- example3 -")

//2 * pi * r = 원의 지름     // 0       //360       //90
for radians in stride(from: 0.0, to: .pi * 2, by: .pi / 2) {
  let degrees = Int(radians * 180 / .pi)
  print("Degrees: \(degrees), radians: \(radians)")
}


//3부터 거꾸로
print("\n- example4 -")
for countdown in stride(from: 3, to: 0, by: -1) {
  print(countdown, "...", separator: "")
}

//0부터 5로 내려가기... //출력을 하지 않고 끝내버림
print("\n- example5 -")
for i in stride(from: 0, to: 5, by: -1) {
  print(i)      // print nothing
}


//: ## stride(from:through:by)
/***************************************************
 func stride<T>(from: T, through: T, by: T.Stride)
 - from 값으로 시작하여 stride 값만큼 증가하면서 through 값을 포함한 숫자까지 반복
 
 e.g. [start, start + stride, start + stride * 2, ..., until less than or equal to end]
 ***************************************************/
print("\n---------- [ from through by ] ----------\n")

//..<   //from to
//...   //from through
print("- example1 -")
for i in stride(from: 0, through: 6, by: 3) {
  print(i)
}

print("\n- example2 -")
for countdown in stride(from: 3, through: 0, by: -1) {
  print(countdown, "...", separator: "")
}

//for gugu in stride(from: 1, to: 10, by: 1){
//    print(gugu)
//}
//: [Next](@next)
