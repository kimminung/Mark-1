//: [Previous](@previous)

let immutableArray = Array(1...40)

// 1. 배열의 각 요소 * index 값을 반환하는 함수

func multiplyByIndex(index: Int, number: Int) -> Int {
  return index * number
}

var mapArr: [Int] = []
for (idx, element) in immutableArray.enumerated() {
  //  print(multiplyByIndex(index: idx, number: element))
  mapArr.append(multiplyByIndex(index: idx, number: element))
}

immutableArray.enumerated()
  .map(multiplyByIndex(index:number:))


// 2. 배열 요소 중 홀수는 제외하고 짝수만 반환하는 함수 

func isEven(number: Int) -> Bool {
  return number & 1 == 0
}

var evenArr: [Int] = []
for element in mapArr {
  if isEven(number: element) {
    evenArr.append(element)
  }
}

print(immutableArray.filter(isEven(number:)))

print(immutableArray.filter { $0 & 1 == 0 })
// true -> 추가
// false -> 제거



// 3. 배열의 모든 값을 더하여 반환하는 구현

print("\n---------- [ 3번 ] ----------\n")
func addingAllNumbers(sum: Int, number: Int) -> Int {
  return sum + number
}

var sum = 0
for element in immutableArray {
  sum = addingAllNumbers(sum: sum, number: element)
}
sum

// reduce
immutableArray.reduce(0, addingAllNumbers(sum:number:))

immutableArray.reduce(0) { $0 + $1 }

immutableArray.reduce(0, +)


// 4. 1~3 번 함수를 차례대로 적용한 최종 값을 반환

// map : [T] -> [U]
// filter : [T] -> [T]
// reduce : [T] -> U

immutableArray.enumerated()
  .map { $0 * $1 }
  .filter { $0 & 1 == 0 }
  .reduce(0) { $0 + $1 }


immutableArray.enumerated()
  .map( * )
  .filter({ $0 & 1 == 0 })
  .reduce(0, +)




let array = ["1j", "2d", "22", "33"]

let m1 = array.map({ Int($0) })
type(of: m1)
m1

let f1 = array.compactMap ({ Int($0) })
type(of: f1)
f1



let m2 = array.map({ Int($0) }).first
m2   //

let f2 = array.compactMap({ Int($0) }).first
f2


//: [Next](@next)
