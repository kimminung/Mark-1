//: [Previous](@previous)
/*:
 # Control Transfer Statement
 - 특정 코드에서 다른 코드로 제어를 이전하여 코드 실행 순서를 변경하는 것
 - Swift 에는 5가지 키워드 사용
   - continue
   - return
   - break
   - fallthrough
   - throw
 */


print("---------- [ continue ] ----------\n")

for num in 0...8 {
  if num % 2 == 0 {
    continue
  }
  print(num)
}



print("\n---------- [ return ] ----------\n")

func isEven(num: Int) -> Bool {
  if num % 2 == 0 {
    return true
  }
  return false
}

isEven(num: 1) // false
isEven(num: 2) // true


func returnFunction() -> Int {
  var sum = 0
  
  for _ in 1...100 {
    sum += 20
    return sum
//    return 5
  }
  return 7
}

print(returnFunction())


print("\n---------- [ break ] ----------\n")

for num in 0...8 {
//   num = 0
  if num % 2 == 0 {
    break
  }
  print(num)
}


print("\n---------- [ break ] ----------\n")

for i in 0...3 {
  for j in 0...3 {
    if i > 1 {
      break
    }
    print("  inner \(j)")
  }
  print("outer \(i)")
}

/*:
 ---
 ## Labeled Statements
 ---
 */
print("\n---------- [ labeled ] ----------\n")

OUTER: for i in 0 ... 3 {
  INNER: for j in 0...3 {
    if i > 1 {
      continue INNER
//      break OUTER
    }
    print("  inner \(j)")
  }
  print("outer \(i)")
}

//: [Next](@next)
