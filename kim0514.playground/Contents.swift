//maximumNumberOfLoginAttempts = 20
//변수명이 이전과 다르게 길어지고 있는 추세
//최대 로그인 횟수
//상수
let maximumNumberOfLoginAttempts = 10

//변수
var currentLoginAttempt = 0
currentLoginAttempt = 1

let `let` = 1
//Swift 에서 사용되는 키워드일 경우 backquote(`)를 이용해 사용 가능
print(`let`)

let language:String
    language = "Swift 4"

/*var language:String ""
 */

let name = "Tori"
print(type(of:name))

let age : Int = 4
print(type(of: age))

let weight: Float64 = 6.4464213168946951615646487979651311351315498798789465
print(type(of: weight))
//Double 최소 소수점 이하 15자리수 이하의 정밀도
//Float 최소 소수점 이하 6자리수 이하의 정밀도

/*고정 소수점
  123132.1321213232
  122342.1321433452
  123532.1322344235
 
  부동 소수점
  소수점 자리가 자유
*/

let binaryImteger = 0b10001 //2진수
let hexadecimalInteger = 0x11 //16진수

var bigNumber = 1_000_000_000
//var bigNumber = 1_00000_0000_000


MemoryLayout<Int>.size
Int.max
Int.min

MemoryLayout<UInt>.size
UInt.max
UInt.min
print(UInt.max)


MemoryLayout<Int8>.size
Int8.max
Int8.min

//let q1: UInt8 = -1
//let q2: Int8 = Int8.max + 1
//let q2: Int8 = 127+1 //타입을 미리 알고서 진행하여 오류
//let q2 = Int8(127+1) //타입을 모르고 일단 시작했는데 인트8에서 걸려 에러

//let q3 = Int(Int32.max) +1

//Int32.max +1
//Int64.max +1

//01111111 -> 10000000

//Overflow addition operator
//Int32.max &+ 1  // -128 반대로 최소값 표시
//Int32.max &+ 1  // -2147483648

//Int32.max &- 1  // 127 반대로 최대값 표시
//Int32.max &- 1  // 2147483647

import Foundation
var floatValue: Float = 1.23
//var floatValue1: CGFloat = CGFloat(1.23)
type(of:floatValue)



var nonCharacter = "C"
type(of: nonCharacter)

var Character: Character = "C"
type(of: Character)

MemoryLayout<String>.size
MemoryLayout<Character>.size


//Character는 딱 하나의 문자만 입력 가능
//Character = "" //불가
//Character = "String" //불가


//typealias <#type name#> = <#type expression#>

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min
var maxAmplitudeFound1 = UInt16.min

type(of:maxAmplitudeFound)
type(of:maxAmplitudeFound1)

// 커멘드 + 컨트롤 + 쉬프트 + 클릭 = 퀵 헲프
// 커멘드 + 쉬프트 + 0 = 개발자 도움말

let height = Int8(5)
let width = 10
//let area = height * width // 인트8과 인트 여서 에러
//print(area)

let h = UInt8(25)
let x = 10 * h //에러가 안남. 10은 아직 인트값이 아니고 h의 25까지 계산 한 뒤 h의 인트8로 타입추론함
//type(of: x)
print(x)

//절대값 씌우기 2가지 방법


let integer = Int(-15)

let magnitude = integer.magnitude   //형태를 어사인먼트 인티저로 바꾸면서 유인트로 절댓값 씌움
let absNum = abs(integer)   //기존값을 그대로 절댓값으로



//Terminology

let a = 123
let b = 456
let c: Int? = 789

//  Unary Operator (단항 연산자)
//  -a

//  Prefix (전위 표기법)
//  -a

//  Postfix (후위 표기법)
//  c1

//  Binary Operator (이항 연산자)
//  a + b

//  Infix (중위 표기법)
//  a + b

//  Ternary Operator (삼항 연산자)
//  Swift 에서 삼항 연산자는 단 하나
//  a > 0 ? "positive" : "negatice"

//  if a > 0 {
//  "positive"
//  }else{
//  "negatice"}

//  실수에서의 나눗셈
let e = 123.4
let f = 5.678

e/f

e.truncatingRemainder(dividingBy: f) //정수부분 계산 후 소수부분 더함

e.remainder(dividingBy: f) // 정수

//  e % f 는 불가능



"a" < "A"
"B" <= "b"
"A" < "한"

Unicode.ASCII.encode("a")
Unicode.ASCII.encode("A")
Unicode.ASCII.encode("B")
Unicode.ASCII.encode("b")
Unicode.ASCII.encode("한")

true && true
true && false
false && true
false && false

true || true
true || false
false || true
false || false

//  순서를 잘 정해줘야함 &&의 경우에 모두 같을떄 트루인데
//  ||는 하나라도 참이면 트루여서 첫부분만 보고 뒷부분을 무시해서 계산하는 경우가 생김

//  삼항 연산자 사용해보기 - 한줄로 줄일 수도 있음

//  행렬 0,1,2,3 출력해보기
//  반대로 출력 -> reverse, stride 두 가지 방법으로 거꾸로 출력 가능

func greet(person: String) -> String{
    let greeting = "Hello"+person+"!"
    return greeting
}
greet(person:"Anna")
greet(person:"Brian")

func greetAgain(person: String)->String{
    return "Hello again" + person + "!"
}

greetAgain(person:"Anna")

// (label name:Type) -> (ArgumentName ParameterName:Type)

func someFunction(firstParameterName:Int, secondParameterName:Int){
    print(firstParameterName, secondParameterName)
}

someFunction(firstParameterName: 1, secondParameterName: 2)

//
func someFunction(_ firstParameterName: Int, secondParameterName: Int){
    print(firstParameterName, secondParameterName)
}

    someFunction(1, secondParameterName: 2)

//
func someFunction(argumentLabel parameterName: Int){
    print(parameterName)
}
someFunction(argumentLabel: 10)

//
func functionWithDefault(paramWithoutDefault: Int, paramWithDefault: Int=12)->Int{
    return paramWithoutDefault
}


functionWithDefault(paramWithoutDefault: 3, paramWithDefault: 6)
functionWithDefault(paramWithoutDefault: 4)


func arithmeticMean(_ numbers:Double...)-> Double{
    var total = 0.0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
arithmeticMean(3,8.25, 18.75)

//그냥 해봄
/*
 func arithmeticMean(numbers:Double...)-> Double{
 var total = 0.0
 for number in numbers{
 total += number
 }
 return total / Double(numbers.count)
 }
 
 arithmeticMean(1,2,3,4,5)
 arithmeticMean(3,8.25, 18.75)
*/
/*
func arithmeticMean(_ kims:Int...)-> Int{
    var total = 0
    for kim in kims{
        total += kim
    }
    return total / Int(kims.count)
}
arithmeticMean(1,2,3,4,5)
arithmeticMean(3,8.25, 18.75)
*/ //그냥 해봄

//함수에 데이터를 넘기는것 아규먼트
//그걸 전달받아서 사용하는 변수가 파라미터    //jobs

func say(number:Int){
    print(number)
    //return
}

func say(word: String) -> Void{
    print(word)
    //return
}

func say(something:String) -> (){
    print(something)
    //return ()
}

say(number: 1)
say(word: "1")
say(something: "1")


//func chooseStepFunction(backward:bool, value:Int) -> Int{
//    func stepForward(input:Int) -> Int{
//        return input +1
//    }
//}

//이름을 입력 값으로 받아서 출력하는 함수
func name(person: String)->String{
    let naming = person
    return naming
}
name(person:"minung")
name(person:"anna")
//print
//나이를 입력 값으로 받아서 출력하는 함수
func say(introduce age: Int){
    print(age)
}
say(introduce: 25)
//say(introduce: 30)

/*
 func someFunction(argumentLabel parameterName: Int){
 print(parameterName)
 }
 someFunction(argumentLabel: 10)
*/



//이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func greet(name: String, age: Int) -> String {
    let greeting = "저의 이름은 \(name)이고 나이는 \(age)입니다."
//    let greeting = "저의 이름은" + name + "이고 나이는 " + String(age) + "입니다"
    //print(greeting)
    return greeting
}
greet(name:"minung", age:25) //



//정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
func multiplesOf2(input: Int) {
    let value = 0
    var bool: Bool = true
    if (input  % 2) == value{
        print(bool)
    }else{
        bool = false
        print(bool)
    }
    
}

//multiplesOf2(input: 3)
multiplesOf2(input: 2)



//정수를 두 개 입력받아 곱한 결과를 반환하는 함수(파라미터 하나의 기본 값은 10)
func multiplication(input1: Int, input2: Int) {
    print(input1 * input2)
}
//multiplication(input1: 10,input2: 21)
multiplication(input1: 10,input2: 3)

//4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
//미완
//func test(_ sub: String...,_ score: Double..., avg: Double)-> Double{
////    let result = "평균은 " \(avg) "점 입니다."
//    var total = 0.0
//    for number in score{
//        total += number
//    }
//    return total / Double(score.count)
//}
//test(sub: "과학", score: 30.5, _)
//test(sub: "영어", score: 28.5, _)
//test(sub: "수학", score: 95.5, _)
//test(sub: "광어", score: 100, _)


//test(__avg: result)

/* 참조
 func arithmeticMean(_ numbers:Double...)-> Double{
 var total = 0.0
 for number in numbers{
 total += number
 }
 return total / Double(numbers.count)
 }
 
 arithmeticMean(1,2,3,4,5)
 arithmeticMean(3,8.25, 18.75)
 */
