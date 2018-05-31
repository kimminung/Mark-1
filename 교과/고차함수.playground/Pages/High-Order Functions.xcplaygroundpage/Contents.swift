//: [Previous](@previous)
/*:
 ---
 ## forEach
 ---
 */

let immutableArray = [1, 2, 3, 4]

func printParam(_ num: Int) {
  print(num)
}
immutableArray.forEach(printParam(_:))

immutableArray.forEach {
    print($0, terminator: " ")
}

[1, 2, 3, 4].forEach { num in
  print(num,  terminator: " ")
}


/*:
 ---
 ### Question
 - forEach 와 for 문의 차이점은?
 - 1~10 까지의 숫자 중 짝수만 출력하다가 9가 되면 종료되도록 forEach를 이용해 구현해본 뒤 for 와 비교하여 설명
 ---
 */

let oneTen = [1...10]
func nine(_ num: Int){
    print(num)
}

for i in 1...10{
    guard i != 9 else {break}
    guard i % 2 == 0 else {continue}
//    return    //리턴 에러
    print(i)
}
(1...10).forEach{
    guard $0 <= 9 else {return}
//    break             //못씀
//    continue          //못씀
    if $0 % 2 == 0 {
        print($0)
    }
}
/*:
 ---
 ## map
 ---
 */


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.map {
  $0 + "'s name"
}


let intArr: [Int] = Array<Int>(repeating: 2, count: 10)
intArr.enumerated().map {      //인덱스값을 가짐
  return $0 + $1
}

intArr.enumerated().map {
  return "결과는 \($0 + $1) 입니다."                  //들어온 데이터와 나오는 데이터가 타입이 다를 수 있음
}


/*:
 ---
 ## filter
 ---
 */


names.filter { (name) -> Bool in
  return name == "Chris"                        //크리스가 나오면 배열을 비워버림
}

names.filter { (name) -> Bool in
  return name == "Tori"                         //값이 []으로 아무것도 없는게 출력
}

print(names.filter { $0 == "Alex" })


/*:
 ---
 ## reduce
 ---
 */
//(1...100).reduce(<#T##initialResult: Result##Result#>, <#T##nextPartialResult: (Result, Int) throws -> Result##(Result, Int) throws -> Result#>)
                                                                    //(1...100)부분이 인트여서 Int로 잡음
    
//결과값       초기값                 반복
(1...100).reduce(0) { (sum, next) in
  sum + next                        //return 생략
}

//(1...100).reduce(0) { (sum, next) in
//  sum += next
//}


["1", "2", "3", "4"].reduce("") { (str, chr) in
  str + chr
}
//""
//""+"1"
//"1"+"2"
//"12"+"3"
//"123"+"4"
//"1234"


/*:
 ---
 ## flatMap
 - compactMap
 ---
 */


//func some() -> [[Any]]{
//  return [[1, 2, 3], [1, 5, 99], [1, 1]]
//  flatMapExamaple1.flatMap { $0 }
//
//}

print("\n---------- [ flatMap ] ----------\n")

let flatMapExamaple1 = [[1, 2, 3,nil], [1, 5, 99], [1, nil, 1]]      //중첩된 배열을 합쳐줌
//let flatMapExamaple1 = [[1, 2, 3], [1, 5, 99], [1, 1]]
print(flatMapExamaple1.flatMap { $0 })  //옵셔널을 제거, nil제거 = 중첩제거( 4.0 까지는 이거 씀)
print(flatMapExamaple1.compactMap { $0 })

let flatMapExamaple2 = [1, 5, nil, 9, 16, 100, nil, 7]
//print(flatMapExamaple2.flatMap { $0 })  //옵셔널을 제거, nil제거 = 중첩제거( 4.0 까지는 이거 씀)
print(flatMapExamaple2.compactMap { $0 }) //nil 제거(4.1부터는 이걸로..두가지 기능을 동시에 하면 헷갈려서)



//살펴보기

let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil, nil]]
print(array.flatMap { $0 }.compactMap { $0 })
print(array.compactMap { $0 }.flatMap { $0 })

[1,2,3].first

[1,2,3].last

//: [Next](@next)
