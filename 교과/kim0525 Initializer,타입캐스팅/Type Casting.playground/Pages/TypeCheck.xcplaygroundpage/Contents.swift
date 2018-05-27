//: [Previous](@previous)
/*:
 # Type Check
 */

class className{}
var anyArray: [Any] = [1, "2", 3.0]
var anyObjectArray: [AnyObject] = [className()]
var intArray: [Int] = [1,2,3]

/*:
 ---
 ## 타입 확인 - type(of: )
 ---
 */

func printGenericInfo<T>(_ value: T) {  //T = 제네릭 어떤게들어와도 실행
  let types = type(of: value)
  print("'\(value)' of type '\(types)'")
}
printGenericInfo(2)

type(of: intArray)
type(of: anyArray)
type(of: anyObjectArray)
type(of: 1)
type(of: "111") //아직 값이 없지만 111로 인식하게 함. 111은 리터럴

/*:
 ---
 ## 타입 비교 - is
 ---
 */

if anyArray[0] is Int {     //anyArray의 0번째 값이 인트면 인트 아니면 엘스
  print("Int")
} else {
  print("else")
}


type(of: anyArray[0])



// # type(of:)를 써서 비교할 때는 .Type 까지 명시

if type(of:anyArray[0]) is Int.Type {
  print("Equal")
}

if type(of:anyArray[0]) is Int {
  print("Equal")
}

if 1 is Int {
    
}


//if 10 is Int {
//  print("Equal")
//}



/*:
 ---
 ## 상속 관계
 ---
 */
class Aa: Human {
    var name2: String = "Aa"
}
class Human {
    var name: String = "name"
}
class Student: Human {
    var school: String = "school"
}
class Baby: Human {
    var age: Int = 1
}

let someone: Student = Student()
print(someone is Human)
print(someone is Student)
print(someone is Baby)

let someArr: [Human] = [Human(), Student(), Baby(), Human(), Student(), Baby()]

someArr[0] is Human

someArr[3] is Human

someArr.last is Human
someArr.last is Aa
//: [Next](@next)
