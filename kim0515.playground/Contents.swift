//if <#condition#> {
//    <#code#>
//}
//
//if <#condition#> {
//    <#code#>
//}else{
//    statements
//}

//if
var temperatureInFahrenheit = 30

30<=32

if temperatureInFahrenheit <= 32{
    print("It's very cold. Consider wearing a scarf.")
}


//if - else
temperatureInFahrenheit = 40

90<=32
90>=86

if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}else{
    print("It's not that cold.Wear a t-shirt.")
}

//if - else if

temperatureInFahrenheit = 72

72 <= 32
72 >= 86

if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}
/*
 ###Question
 #####Q1
 */
//- if~else if / if 문을 2개 하는 것과 차이점?
 if temperatureInFahrenheit <= 32 {
 print("It's ~")
 }
 if temperatureInFahrenheit >= 86 {
 print("It's !~~")
 }
 
// else if를 쓰면 참일 경우만 출력
// if 여러번일 경우 if 마다 처리
 
// #####Q2
//- if ~else if 문에서 else를 안쓰고(빈 공간) 모든 경우에 대해 값이 나오게 하려면
 
 temperatureInFahrenheit = 72
 
 72 <= 32
 72 >= 86
 
 if temperatureInFahrenheit <= 32 {
 print("It's very cold. Consider wearing a scarf.")
 }else if temperatureInFahrenheit >= 86 {
 print("It's really warm. Don't forget to wear sunscreen.")
 }else if temperatureInFahrenheit > 32 {
 print("32보다 큼")
 }else if temperatureInFahrenheit < 86 {
 print("86보다 작음")
 }
 
 print("end")


 //Local And Operator
 
if (temperatureInFahrenheit > 0) && (temperatureInFahrenheit % 2 == 0) {
}
//Logical And Operator

//

//    let alphabet = "z"
 let alphabet : Character = "z"
    
    // if alphabet = "a" {
    //    print("The first")
    //}else if alphabet = "z" {
    //    print("The last")
    //}

switch alphabet {
case "a":
    print("The first letter of the alphabet")
    //break = 스위프트에서는 브레이크가 기본이라 생략함
case "z":
    print("The last letter of the alphabet")
default:
//Invalid, the case has an empty body

break

//print("Some other character")
}

//Interval Matching

let approximateCount = 30
//let approximateCount = -1
//let approximateCount = 10000

switch approximateCount {
case 0...50:
    print("0~50")
case 51...100:
    print("51~100")
default:
    print("Something else")
}

//
//let name = "김민웅"
let name = "김대웅"

switch name {
case "김민웅":
    print("내 이름")
case "김대웅":
    print("가족")
default:
    print("")
}

//Compound Cases

let someCharacter: Character = "e"

switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}


//if ["a","e","...]

//value binding

let stillAnotherPoint = (9, 0)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}


// _ 사용
//switch stillAnotherPoint {
//case (_, 0), (0, _):
//    print("On an axis, 9 from the origin")
//default:
//    print("Not on an axis")
//}


// 하드코딩
//switch stillAnotherPoint {
//case (9, 0):
//    print("On an axis, 9 from the origin")
//case (0, 9):
//    print("On an axis, 9 from the origin")
//default:
//    print("Not on an axis")
//}

//no default case

let isTrue = true
type(of: isTrue)

//switch isTrue {
//default:
//    print("default")
//case true:
//print("true")
//case false:
//print("false")
//}

switch isTrue {
case true:
    print("true")
case false:
    print("false")
}

//fallthrough

let integerToDescribe = 5
    var description = "The number \(integerToDescribe) is"

    switch integerToDescribe {
    case 2,3,5,7,11,13,17,19:
        description += " a prime number and also"
        //fallthrough
    default:
        description += "an integer."
    }
    print(description)

// Early Exit

//func update(age: Int) {
//    if 0...100 ~= age {
//        print("OK")
//    }
//}
//
//update(age: 10)


/**********************

if <#condition#> {
    <#code#>
}
guard <#condition#> else {
    <#statements#>
}
**********************/

func update1(age: Int) {
    guard 0...100 ~= age else { //return }
//        print("else")
        return
    }
    print("pass")
}

//func update1(age: Int) {
//guard 0...100 ~= age,
//age == 100
//    else {
//        print("else")
//    return
//}
//print("pass")
//}

update1(age:2)
update1(age:-1)
//update1(age:100)


//## Question

//- 두 개의 정수를 입력받아 두 수를 하나로 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
//돌아가지만 경고 뜸
//let stillAnotherPoint2 = (1,5)
//
//switch stillAnotherPoint2 {
//case (let distance, let distance1), (let distance1, let distance):
//    print("\(distance)\(distance1)")
//default:
//    print("Not on an axis")
//}



//- 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

let Moonza2 = ("김", "민")

//- 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

//- 여러 등급을 입력받아 그 학점의 평균을 반환해주는 함수

//- 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
//- 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수
//- 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")





//Loops
/****************

for <#item#> in <#items#> {
    <#code#>
}
*****************/

for index in 1...4 {
    print("\(index) times 5 is \(index * 5)")
}

// Wildcard Pattern
//단순히 몇 횟수만큼. 반복시켜주고 싶을때 _ 처리하면 경고 안뜸
for _ in 0...3 {
    print("hello")
}

for chr in "Hello" {
    print(chr, terminator: " ")
//    type(type(of: chr))
}
print()

let list = ["Swift", "Programming", "Language"]
for str in list {
    print(str)
}


//Question
//for 문을 이용하여 3의 10 제곱에 대한 결과값을 표현하는 코드
//미완
//for index in 0...10 {
//    print("\(3 * index)")
//    break
//
//}
//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드
//미완
//for num in {
//    print(
//}

//for num in stride(from: 10, to: 1, by: -1)

/************************
 while <#condition#> {
 <#code#>
 }
 ************************/

var num = 0
var sum = 0


while num <= 100 {
    sum += num
    num += 1
}

print(sum)

/*****************
repeat {
    code
}while <#condition#> {
    <#code#>
}

 -루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while문으로 많이 사용
 *****************/

//미완
//num = 0
//sum = 0
//
//repeat{
//    sum += num
//    num += 1
//    }
//    while num <= 100 {
//        //
//}
//sum

// for, while, repeat - while 사용
//### Question
//for , while , repeat - while 등을 활용하여 아래 문제들을 구현해보세요.
//- 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
//- 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
//- 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
//- 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
//- 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
//- 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
//- 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
//- 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수



let threeNumbers: (Int, Int, Int) = (1,2,3)
type(of: threeNumbers)

threeNumbers.0
threeNumbers.1
threeNumbers.2

var threeValues: (Int, Double, String) = (1, 2.3, "456")
type(of: threeValues)

threeValues

threeValues.0 = 5
threeValues

typealias MyData = (Int, Double, String)

var threeValues2: MyData

let (first, second, third) = threeNumbers
first
second

//wildcard pattern

let (_, second1, third1) = threeNumbers
second1
third1

//named tuple
let ios = (language: " Swift", version: "4")

ios.0
ios.1

ios.language
ios.version

//Comparison Operators 비교 연산자
// -Tuple은 7개 미만 요소에 대한 비교 연산자가 포함되어 있음
// -7개 이상의 요소를 비교하기 위해서는 비교연산자를 직접 구현해야 함

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
("1", 1) < ("3.14", 99)
("일", 1) > ("이", 2.0)
//(1, true) > (2, false)
//(1, "김") < ("2", "민")

(3, 1) < (3.14, 1)
//(3.0, 1) < (3.14, 1)
let h = 3.14
100 * h


let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):	//x 축의 모든 점들을 다 매칭시킬 때 _ 처리
    print("\(somePoint) is at the x-origin")
case (0, _):
    print("\(somePoint) is at the y-origin")
case (-2...2, -2...2):
    print("\(somePoint) is is inside the box")
//case (let x, let y):
//    print("\(somePoint) \(somePoint) is x y")
    //case let (x, y, o ....):
//    print("\(somePoint) is etc")
default:
    print("\(somePoint) is outside of the box")
}

//Dictionary Enumeration

let fruits = ["A": "Apple", "B": "Banana", "C": "Cherry"]

for(key, value) in fruits {
    print(key, value)
}

for element in fruits {
    print("Key :", element.key, "Value :", element.value)
    // 어떤 식으로 출력해야 할까요?
}

//Control Transfer Statement

// -특정 코드에서 다른 코드로 제어를 이전하여 코드 실행 순서를 변경하는것
// -Swift에는 5가지 키워드 사용

for num in 0...8 {
    if num % 2 == 0 {
        continue
    }
    print(num)
}

//Return
//func kim()


//Break - For문을 탈출
//아무것도 안나옴;
for num in 0...8{
    if num % 2 == 0 {
        break
    }
    print(num)
}

for i in 0...3 {
    for j in 0...3 {
        
        if i > 1 {
            break
        }
        
        print(" inner \(j)")
    }
    print(" outer \(i)")
}

OUTER: for i in 0 ... 3 {
    INNER: for j in 0 ... 3 {
        if i > 1 {
//            continue INNER
            break OUTER
        }
        print(" inner \(j)")
    }
    print("outer \(i)")
}


//Enumerations
// - 연관된 값의 그룹에 대해 공통 타입을 정의한 뒤 type-safe하게 해당 값들을 사용 가능

enum SomeEnumeration {	//파스칼 케이스 대문자로 시작
    //
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
//type safe 예시
var directionToHead1 = CompassPoint.west
directionToHead1 = .north

var directionToJead2: CompassPoint = .south

//Matching Enumeration Values

let directionToHead = CompassPoint.south

switch directionToHead {
case .north:
    print("")
default:
    print("<#T##items: Any...##Any#>")
}

//Associated Values

enum Barcode {
    case upc (Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 46465, 3212311, 2)
productBarcode = .qrCode("ASDASD")
type(of: productBarcode)


//	벨류 바인딩ß
//	switch productBarcode {
//    case let .upc( ... , ... , ... ,...)
//}
