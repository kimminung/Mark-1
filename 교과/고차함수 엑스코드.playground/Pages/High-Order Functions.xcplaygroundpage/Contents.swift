//: [Previous](@previous)
/*:
 ---
 ## forEach
 ---
 */

let immutableArray = [1, 2, 3, 4]

func printParam(_ num: Int) {
  print(num, terminator: " ")
}
immutableArray.forEach(printParam(_:))
print()

immutableArray.forEach {
  print($0, terminator: " ")
}
print()

[1, 2, 3, 4].forEach { num in
  print(num, terminator: " ")
}
print()


/*:
 ---
 ### Question
 - forEach 와 for 문의 차이점은?
 - 1~10 까지의 숫자 중 짝수만 출력하다가 9가 되면 종료되도록 forEach를 이용해 구현해본 뒤 for 와 비교하여 설명
 ---
 */

print("\n---------- [ for ] ----------\n")

for i in 1...10 {
  guard i != 9 else { break }
  guard i % 2 == 0 else { continue }
  print(i)
}

print("\n---------- [ forEach ] ----------\n")

(1...10).forEach {
  guard $0 < 9 else { return }
  if $0 % 2 == 0 {
    print($0)
  }
}


/*:
 ---
 ## map
 ---
 */

print("\n---------- [ Map ] ----------\n")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.map {
  $0 + "'s name"
}


let intArr = Array<Int>(repeating: 2, count: 10)
let result2 = intArr.enumerated().map {
  return $0 + $1
}

let result1 = intArr.enumerated().map {
  return "결과는 \($0 + $1) 입니다."
}


/*:
 ---
 ## filter
 ---
 */


names.filter { (name) -> Bool in
  return name == "Chris"
}

names.filter { (name) -> Bool in
  return name == "Tori"
}

print(names.filter { $0 == "Alex" })


/*:
 ---
 ## reduce
 ---
 */

//(1...100).reduce(<#T##initialResult: Result##Result#>, <#T##nextPartialResult: (Result, Int) throws -> Result##(Result, Int) throws -> Result#>)

(1...100).reduce(0) { (sum, next) in
  return sum + next
}

//(1...100).reduce(0) { (sum, next) in
//  sum += next
//}

["1", "2", "3", "4"].reduce("") { (str, chr) in
  str + chr
}

//[1, 2, 3, 4].reduce("") { (str: String, num: Int) in
//  str + String(num)
//}


/*:
 ---
 ## flatMap
 - compactMap
 ---
 */


//func some() -> [[Any]]{
//  return [[1, 2, 3], [1, 5, 99], [1, 1]]
//  flatMapExamaple1.flatMap { $0 }
//}



print("\n---------- [ flatMap ] ----------\n")

let flatMapExamaple1 = [[1, 2, 3], [1, 5, 99], [1, 1]]
flatMapExamaple1
  .flatMap { $0 }


let flatMapExamaple2 = [1, 5, nil, 9, 16, 100, nil, 7]
//flatMapExamaple2.flatMap { $0 }
flatMapExamaple2
  .compactMap { $0 }


let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil, nil]]
//print(array.flatMap { $0 }.compactMap { $0 })
//print(array.compactMap { $0 }.flatMap { $0 })



//: [Next](@next)
