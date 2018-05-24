//: [Previous](@previous)
//: # sequence
/***************************************************
 func sequence<T>(first: T, next: (T) -> T?)
 - first 값으로 시작하여 next 값을 lazy 하게 반복하는 순열 생성
 ***************************************************/
print("\n---------- [ sequence(first:next:) ] ----------\n")

print("- example1 -")
//var multiplyBy2 = sequence(first: 1) { $0 * 2 }
var multiplyBy2 = sequence(first: 1) { num in
    return num * 2
}
//multiplyBy2.forEach { print($0) }  // 무한루프
print(multiplyBy2.next())
print(multiplyBy2.next())

//[1,2,3].prefix(<#T##maxLength: Int##Int#>)

for i in multiplyBy2.prefix(5) {
    print(i)
}

multiplyBy2.prefix(7).forEach { print($0) }


print("\n- example2 -")
let repeatSeq = sequence(first: 5) { $0 }
for x in repeatSeq.prefix(5) {
  print(x)
}

//: [Next](@next)

