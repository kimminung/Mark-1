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

//     if alphabet = "a" {
//        print("The first")
//    }else if alphabet = "z" {
//        print("The last")
//    }

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
        fallthrough
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

func numAdd2(_ input: Int, _ input1: Int){
    print("\(input)\(input1)")
}
numAdd2(1,2)
//let numAdd = (1,5)
//
//switch numAdd {
//case let(a, b), let(b, a):
//    print("\(a)\(b)")
//}
//----------------
func getAdd(_ num: Int , _ num2: Int) -> String{
    let result: String = String(num) + String(num2)
    return result
}
print(getAdd(1, 5))
//
func addNum(_ num1 :Int,_ num2 :Int){
    print(String(num1) + String(num2))
}
addNum(1,2)
//
func addCharacter(first:String, second:String) -> String {
    let result = first + second
    print(result)
    return result
}
addCharacter(first: "1", second: "5")
//---------------

//- 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
func moonza2(input: String, input1: String) -> Bool{
    var bool: Bool = true
    if input == input1{
        print(bool)
    }else{
        bool = false
        print(bool)
    }
    return bool
}
moonza2(input:"민", input1:"민")

//----------------
func sameTwoReturn(one: String, two: String) {
    if one == two {
        print("\(one)와 \(two)는 같습니다.")
    } else {
        print("\(one)와 \(two)는 다릅니다.")
    }
}
sameTwoReturn(one: "1", two: "2")
sameTwoReturn(one: "전지현", two: "김하늘")
sameTwoReturn(one: "나", two: "나")
//
func checkStr(_ Str1:String,_ Str2:String){
    if Str1==Str2{
        print("true")
    }
    else{
        print("false")
    }
}
checkStr("apple", "e")
//
func getString(str: String ,str2: String) -> Bool{
    return str == str2 ? true : false
}
getString(str: "a", str2: "a")
//----------------

//- 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

func hack(score: Double){
    switch score {
    case 4.1...4.5:
        print("A+")
    case 3.6...4.0:
        print("A")
    case 3.1...3.5:
        print("B+")
    case 2.6...3.0:
        print("B")
    case 2.1...2.5:
        print("C+")
    case 1.6...2.0:
        print("C")
    case 1.1...1.5:
        print("D+")
    case 0.6...1.0:
        print("D")
    default:
        print("F")
    }
    return
}

hack(score: 6.8)
hack(score: 2.1)

//let score = 61.2
//
//switch score {
//case 0.0...50.0:
//    print("A")
//case 51...100:
//    print("B")
//default:
//    print("Something else")
//}


//- 여러 등급을 입력받아 그 학점의 평균을 반환해주는 함수

func hackJeom(_ grades: String...)->Double{
    var total: Double = 0.0
    for grade in grades {
    switch grade {
    case "A+":
        total += 4.5
    case "A":
        total += 4.0
    case "F":
        total += 0.0
    default:
        print("잘못 입력")
        
    }
    }
    return total / Double(grades.count)
}
hackJeom("A", "A+", "A+", "F")
//func avg(_ input: String...) -> Double {
//    let total = 0.0
//    switch input {
//    case ["A+"]:
//        let gradeApMin = 4.1
//        let gradeApMax = 4.5
//        for number in 1.0...gradeApMin {
//            total += number
//        for number2 in gradeApMax {
//            total += number2
//            }
//        return print("\(number)...\(number2)")
//        continue
//        }
//    case ["A"]:
//        let gradeApMin = 3.6
//        let gradeApMax = 4.0
//        for number in gradeApMin {
//            total += number
//            for number2 in gradeApMax {
//                total += number2
//            }
//        return print("\(number)...\(number2)")
//        continue
//        }
//    default:
//        print(total)
//    }
//    return total / Double(input.count)
//}
//avg("A", "A+", "A+", "F")
//--------------------
func creditReturnRating(inputCredit:Double) {
    
    switch inputCredit {
    case 4...4.5:
        print("당신의 학점은 A+ 입니다.")
    case 3.5...4.0:
        print("당신의 학점은 A 입니다.")
    case 3.0...3.5:
        print("당신의 학점은 B+ 입니다.")
    case 2.5...3.0:
        print("당신의 학점은 B 입니다.")
    case 2.0...2.5:
        print("당신의 학점은 C 입니다.")
    default:
        print("당신은 정학이거나 말귀를 잘 못알아듣는 사람입니다.")
    }
}

// 이거 3.0보다 크고 4.0이하 면은 <.. 이런거안되던가
creditReturnRating(inputCredit: 4.1)
creditReturnRating(inputCredit: 2.3)
creditReturnRating(inputCredit: 89)
//
func getGrade(_ score:Double...)->Double{
    var total=0.0
    
    for newScore in score{
        total += newScore
        
        if newScore>=4.5{
            print("A+")
        }
        else if newScore>=4.0 && newScore<4.5{
            print("A")
        }
        else if newScore>=3.5 && newScore<4.0{
            print("B+")
        }
        else if newScore>=3.0 && newScore<3.5{
            print("B")
        }
        else if newScore>=2.5 && newScore<3.0{
            print("C+")
        }
        else{
            print("재수강")
        }
    }
    print("평균 학점 : ",total/Double(score.count))
    return total/Double(score.count)
}
getGrade(2.5, 1.0, 4.5, 4.0, 3.0, 3.7, 4.3)
//
func getAvg(_ points: Double...)->Double{
    var sum: Double = 0.0
    for point in points{
        sum += point
    }
    return sum/Double(points.count)
}
print(getAvg(3.0,4.0,2.0))
//--------------------


//- 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
/*
 서력 기원 연수가 4로 나누어떨어지는 해는 윤년으로 한다.(1988년, 1992년, 1996년, 2004년, 2008년…) 이 중에서 100으로 나누어떨어지는 해는 평년으로 한다.(1900년, 2100년, 2200년, 2300년, 2500년 …) 그 중에 400으로 나누어떨어지는 해는 윤년으로 둔다.(1600년, 2000년, 2400년 …)
 */

func leapYear(year: Int) {
    if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0){
        print("\(year)년 = 윤년")
    }else{
        print("\(year)년 = 평년")
    }
}

leapYear(year: 1988)
    
    
    
    
    
    
    
    
//----------------
func leapYearReturn(year: Int){
    if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0){
        print("\(year)은 윤년입니다")
    }else{
        print("\(year)은 평년입니다")
    }
}

leapYearReturn(year: 1988)
leapYearReturn(year: 2100)
leapYearReturn(year: 2200)
leapYearReturn(year: 2004)
leapYearReturn(year: 2400)
//
func checkYear(_ year:Int){
    if year%4==0{
        if year%100==0{
            if year%400==0{
                print("윤년")
            }
            else{
                print("평년")
            }
        }
        else{
            print("윤년")
        }
    }
    else{
        print("평년")
    }
}

checkYear(196)
checkYear(200)
checkYear(400)
//
func getYear(num year:Int){
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ){
        print("윤년입니다")
    }else{
        print("윤년이 아닙니다")
    }
}
getYear(num: 2018)
//-------------

//- 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수

func threeNum(_ one: Int,_ two: Int,_ thr: Int) -> Bool {
    var sum = 0
    sum = one * two * thr
    return sum > 0 ? true : false
}
threeNum(-5, 0, 2)
//---------------------
func inputThreeNubmer(fir :Double, sec:Double, thi : Double) -> Bool {
    var total = 0.0
    total = fir * sec * thi
    if(total>0){
        return true
    }else{
        return false
    }
}
inputThreeNubmer(fir: 1, sec: 2, thi: 3)
inputThreeNubmer(fir: -1, sec: 2, thi: 3)
inputThreeNubmer(fir: 1, sec: -2, thi: -3)
inputThreeNubmer(fir: 134.4, sec: 22.1, thi: 3)
inputThreeNubmer(fir: -1, sec: 223.1, thi: 3)
//
func checkNegative(_ num1:Int,_ num2:Int,_ num3:Int)->Bool{
    var isTrue = true
    
    if (num1*num2*num3)>=0{
        isTrue=true
    }
    else{
        isTrue=false
    }
    return isTrue
}

checkNegative(15, -15, -15)
//
func mulFn(_ num:Int , _ num2:Int , _ num3:Int)->Bool{
    var sum = 0
    sum = num * num2 * num3
    return sum > 0 ? true : false
}
mulFn(1,2,1)

//----------------

//- 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")

//----------------
func inputNumberMonthReturn(number:Int) {
    switch number {
    case 1:
        print("1월")
        return
    case 2:
        print("2월")
        return
    case 3:
        print("3월")
        return
    case 4:
        print("4월")
        return
    case 5:
        print("5월")
        return
    case 6:
        print("6월")
        return
    case 7:
        print("7월")
        return
    case 8:
        print("8월")
        return
    case 9:
        print("9월")
        return
    case 10:
        print("10월")
        return
    case 11:
        print("11월")
        return
    case 12:
        print("12월")
        return
    default:
        print("잘못된 입력입니다.")
    }
}

inputNumberMonthReturn(number: 1)
inputNumberMonthReturn(number: 3)
inputNumberMonthReturn(number: 5)
inputNumberMonthReturn(number: 10)
inputNumberMonthReturn(number: 11)
//

func Calender(_ num: Int) -> String{
    let calList = [1:"jan", 2:"feb",3:"mar",4:"apr",5:"may",6:"june",7:"july",8:"aug",9:"sep",10:"oct",11:"nov",12:"dec"]
    
    guard num > 0 , num < 13 else {return "잘못된 값 입니다"}
    
    return (calList[num]!)
}
print(Calender(8))

//--------------------


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


let three = 3
let ten = 10
var answer = 1


for _ in 1...ten {
    answer *= three
}
print(answer)

//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드

for num in (1...10).reversed() {
    print(num, terminator: " ")
}
print()

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
print("------------------")
func googoo(_ input: Int){
    var dandan = 1
    var total = 0
    while dandan < 10 {
        total = dandan
        dandan += 1
    }
}
googoo(3)
//
func gugudan(i : Int){
    for j in 1...9 {
        print(i*j)
    }
}
gugudan(i: 3)
gugudan(i: 9)
func multiPle(dan: Int){
    for i in 1...9{
        print( "\(dan) X \(i) = \(i*dan)")
    }
}
multiPle(dan: 5)
func mul(_ num1:Int,_ num2:Int){
    for index in 1...num2{
        print("\(num1) * \(index) = \(num1*index)")
    }
}
mul(2,9)
//func 구구단(_ num : Int){
//    for k in 1...9 {
//        print("(num) * (k) = (num * k)")
//    }
//    //    var k: Int = 1
//    //    while ku < 10 {
//    //       print("(num) * (ku) = (num * ku)")
//    //        k += 1
//    //    }
//}
//
//구구단(3)


//- 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수

func factorial1(n : Int){
    var sum = 1
    for j in 1...(n-1) {
        sum = sum * j
    }
    print("\(n)!값은 \(sum)입니다")
}

factorial1(n: 5)  //이거 된거아니냐?.. 맞나모르겠네 ㅋㅋ 뽀록으로 돌아가는거라서
//
func factRial(num: Int) -> Int{
    
    var sumFact: Int = 0
    
    for i in 1 ... num {
        
        sumFact *=  (num - i)
    }
    
    return sumFact
}

print("Now", factRial(num: 10))
//
func factorial2(_ num1:Int){
    var sum=1
    for index in (1...num1).reversed(){
        sum*=index
    }
    print(sum)
}

factorial2(3)
//
func factorial3(_ n: Int) -> Int {
    guard n > 0 else {return 1}
    return n * factorial3(n-1)
}
print(factorial3(3))


//- 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수

func inputTwoNum(num: Int, num2: Int)->Int{
    
    var result: Int = 0
    
    for _ in 1 ... num2 {
        result *= num
    }
    
    return result
}

inputTwoNum(num: 5 , num2: 5)
func repeatFn(num: Int ,num2: Int) -> Int{
    var sum = 0
    for _ in 0...num2 {
        sum = num * num2
    }
    return sum
}
print(repeatFn(num: 2,num2:2))

//- 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수

//func sdaf(n:Int){
//    var total = 0
//    var c = n % 10
//    var b = (n/10) % 10
//    var a = (n/10)/10
//    total = a + b + c
//
//    print(a, b, c)
//    print(total)
//}
//sdaf(n: 123)
//sdaf(n: 45)
func addNum(_ num : Int)-> Int{
    var count = 1
    var sum = 0
    var newNum = 0
    var firstNum:Int
    firstNum=num
    
    while num > count{
        count *= 10
    }
    
    while count >= 1{
        newNum = firstNum/count
        sum += newNum
        firstNum = firstNum - (newNum * count)
        count /= 10
    }
    
    return sum
}

addNum(123)
addNum(1)
addNum(6463)
func addFn(_ num: Int) -> Int{
    var addTemp: Int = num
    var result: Int = 0
    
    while addTemp > 0 {
        result += addTemp % 10
        addTemp = addTemp / 10
    }
    return result
    
}

print(addFn(123))

//- 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

/*
 공배수(公倍數)란 두 개 이상의 자연수의 공통인 배수를 말한다. 예를 들어 3과 4의 공배수는 3의 배수이기도 하고 4의 배수이기도 한 수이다.
3과 4의 공배수는 3의 배수이기도 하고 4의 배수이기도 3과 4의 공배수는 12, 24, 36...
3*4, 3*8, 3*12,...
4*3, 4*6, 4*9,...
total = 3 * ( 4 * n ) , total <= 100
 */
func CommoMultiple(){
    for idx in 1...100 {
        let total = 3 * (4 * idx)
        if total > 100 {
            return
        }
        print("100 이하의 3 과 4의 공배수는 \(total)입니다.")
    }
}
CommoMultiple()
func getNum(_ num1:Int,_ num2:Int,_ min:Int,_ max:Int){
    var minNum:Int; minNum=min
    var maxNum:Int; maxNum=max
    var checkNum:Int=0
    
    for index in minNum...maxNum{
        if index%num2==0{
            if index%num1==0{
                checkNum+=1
                print(index)
            }
        }
    }
    if checkNum==0{
        print("해당 범위 내에 최소 공배수 없음")
    }
    else{
        print("해당 범위 내에 최소 공배수 갯수 : ",checkNum)
        print()
    }
}

getNum(3,5,1,100)
getNum(15,17,1,50)
func 공배수(){
    for n in 1..<100 {
        if n % 3 == 0 , n % 5 == 0{
            print(n)
        }
    }
}
//- 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
//약수(約數, 영어: divisor) 또는 인수(因數, 영어: factor)는 어떤 정수를 나머지 없이 나눌 수 있는 정수를 원래의 정수에 대하여 이르는 말이다. 다항식의 약수나 가환환의 원소의 약수를 정의할 수도 있다. 12의 모든 양의 약수는 1, 2, 3, 4, 6, 12이다. 42의 모든 양의 약수는 1, 2, 3, 6, 7, 14, 21, 42이다.

func divisorNumber(d :Int){
    for idx in 1...d {
        if (d % idx == 0){
            print("\(d)는 약수는 \(d/idx) 입니다")
        }
    }
}

divisorNumber(d: 12)
divisorNumber(d: 42)
func getNum1(_ num:Int){
    
    for index in 1...num{
        if num%index==0{
            print(index)
        }
    }
}

getNum1(15)
func diviseur(_ n: Int){
    for index in 1...n{
        if n%index == 0{
            print(index)
        }
    }
}
diviseur(10)

//- 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
//*1. 소수(Prime number) 자신보다 작은 두 개의 자연수를 곱하여 만들 수 없는, 1보다 큰 자연수이다. 예를 들어, 5는 1x5 또는 5x1로 수를 곱한 결과를 적는 유일한 방법이 그 수 자신을 포함하기 때문에 5는 소수이다. 그러나 6은 자신보다 작은 두 숫자(2×3)의 곱이므로 소수가 아니다. 1과 그 수 자신 이외의 자연수로는 나눌 수 없는 자연수로 정의하기도 한다 *2 3 5 7 11

func primeNumber(p :Int){
    for i in 1...(p-1){
        for j in 1...(p-1) {
            if i*j == p {
                print("\(p)는 소수가 아닙니다.")
                return
            }
        }
    }
    print("\(p)는 소수입니다.")
}
//이중포문을 돌려서 if a*b 값이 p있다?면 소수

primeNumber(p: 5)
primeNumber(p: 10)
primeNumber(p: 6)
primeNumber(p: 11)
func checkNum(_ num:Int){
    var check:Int=0
    
    if num<2{
        print("입력 받은 수가 2보다 작습니다.")
    }
    else{
        for index in 2...(num-1){
            if num%index==0{
                check+=1
            }
        }
        if check==0{
            print(" \(num) : 소수 입니다")
        }
        else{
            print(" \(num) : 소수가 아닙니다")
        }
    }
}

checkNum(17)
checkNum(100)
func premier(_ n: Int) -> Bool{
    
    for i in 2...(n/2){
        if n%i == 0 {
            return false
        }
    }
    return true
}
print(premier(11))
//- 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
//index : 1, 2, 3, 4, 5, 6, 7, 8, 9, 10... number : 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...

func checkFibonacci(_ num:Int)->Int{
    var sum:Int=0
    var firstNum=0
    var secondNum=1
    
    if num<=0{
        print("0 이하의 수 입니다")
        return 0
    }
    else if num==1{
        sum=0
    }
    else if num==2{
        sum=1
    }
    else{
        for _ in 1...(num-2){
            sum=firstNum+secondNum
            firstNum=secondNum
            secondNum=sum
        }
    }
    return sum
}

checkFibonacci(0)
checkFibonacci(1)
checkFibonacci(2)
checkFibonacci(5)
checkFibonacci(7)
func fibona(_ n: Int){
    var result: Int = 0
    var mid: Int = 0
    var lastVal: Int = 1
    
    for _ in 1...n{
        mid = result + lastVal
        result = lastVal
        lastVal = mid
        
        print(result)
    }
}
fibona(10)
//재귀함수
func fibona1(_ n: Int) -> Int{
    if n  < 2 {
        return 0
    }else{
        //       return "\(fn(n-1)) \(fn(n-2))"
        return (fibona1(n-1) + fibona1(n-2))
    }
    
}
print(fibona1(10))
//강사님께서 알려주신 답안 for문
func fibonacciNumbers(N: Int) -> Int{
    guard N > 1 else { return N }
    
    var num1 = 0, num2 = 1
    for i in 1 ..< N {
        switch i % 2 {
        case 0:
            num1 = num1 + num2
        default:
            num2 = num1 + num2
        }
    }
    return num1 > num2 ? num1 : num2  // 둘을 비교하고 맞으면 앞에꺼반환 거짓이면 뒤에반환
}

fibonacciNumbers(N: 2)
fibonacciNumbers(N: 3)
fibonacciNumbers(N: 4)
fibonacciNumbers(N: 5)
fibonacciNumbers(N: 10)
fibonacciNumbers(N: 11)
fibonacciNumbers(N: 12)
//재귀함수 사용
func fiboacciRecursive(N: Int)->Int{
    guard N>2 else  { return N - 1}
    return fiboacciRecursive(N: N-1) + fiboacciRecursive(N: N-2)
}

fiboacciRecursive(N: 1)
fiboacciRecursive(N: 2)
fiboacciRecursive(N: 3)
fiboacciRecursive(N: 4)
fiboacciRecursive(N: 5)



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
