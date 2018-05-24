//: [Previous](@previous)
//: # repeatElement
/***************************************************
 func repeatElement<T>(_ element: T, count n: Int) -> Repeated<T>
 - 동일 요소를 count 값만큼 가진 컬렉션 생성
 ***************************************************/

print("- example1 -")
let zeroes = repeatElement(0, count: 5)
for x in zeroes {
  print(x)
}

print("\n- example2 -")
for x in repeatElement(true, count: 3) {
  print(x)
}

print("\n- example3 -")
//private let printString: (String) -> () = { print($0) }
private func printString(_ str: String) { print(str) }
repeatElement("Swift", count: 3)
  .forEach(printString(_:))


//고차함수
//.forEach(printString(_:))
let element = repeatElement("Swift", count: 3)
element.forEach { str in
    print(str)
}

for i in [1,2,3] {
    print(i)
}
let arr = [1,2,3]
/*[1,2,3]*/ arr.forEach {num in
    print(num)
}
//: [Next](@next)
