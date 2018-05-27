//: [Previous](@previous)
/*:
 # Function
 - 일련의 작업을 수행하는 코드 묶음을 식별할 수 있는 특정한 이름을 부여하여 사용하는 것
 - 유형
   - Input 과 Output 이 모두 있는 것 (Function)
   - Input 이 없고 Output 만 있는 것 (Generator)
   - Input 이 있고 Output 은 없는 것 (Consumer)
   - Input 과 Output 이 모두 없는 것
 */

/*:
 ## Function Syntax
 ![Function Syntax](func.png)
 
 ### Parameter Declaration Syntax
 ![Parameters](param.png)
*/

func greet(person: String) -> String {
  let greeting = "Hello, " + person + "!"
  return greeting
}

greet(person: "Anna")
greet(person: "Brian")


// Combine the message creation and the return statement into one line

func greetAgain(person: String) -> String {
  return "Hello again, " + person + "!"
}

greetAgain(person: "Anna")


// Function with Multiple Parameters

func addNumbers(a: Int, b: Int) -> Int {
  return a + b
}

addNumbers(a: 10, b: 20)
addNumbers(a: 3, b: 5)


/*:
 ---
 ## Argument Label
 
 ### Argument Label Declaration Syntax
 
 ![Argument Label](arg-label.png)
 
 ### Calling Function with Argument Label
 ![Calling Function with Argument Label](arg-call.png)
 */

// Function Argument Labels and Parameter Names


// By default, parameters use their parameter name as their argument label.

func someFunction(firstParameterName: Int, secondParameterName: Int) {
  print(firstParameterName, secondParameterName)
}

someFunction(firstParameterName: 1, secondParameterName: 2)


// Omitting Argument Labels

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
  print(firstParameterName, secondParameterName)
}

//someFunction(firstParameterName: 1, secondParameterName: 2)
someFunction(1, secondParameterName: 2)


// Specifying Argument Labels

func someFunction(argumentLabel parameterName: Int) {
  // parameterName refers to the argument value for that parameter.
  print(parameterName)
}

someFunction(argumentLabel: 10)


// Question
// 왜 Argument Label - Parameter Name 따로 쓰는 지
// 5.distance(to: 10)   to

// Argument Label 을 생략하는 경우는 왜 생략하는지
// => print



// Default Parameter Values

func functionWithDefault(
  paramWithoutDefault: Int,
  paramWithDefault: Int = 12
  ) -> Int {
  return paramWithDefault
}

functionWithDefault(paramWithoutDefault: 3, paramWithDefault: 6)
// parameterWithDefault is 6

functionWithDefault(paramWithoutDefault: 4)
// parameterWithDefault is 12



// Variadic Parameters
// variadic parameters cannot be marked as inout.

func arithmeticMean(_ numbers: Double...) -> Double {
  var total = 0.0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

//print(10,20,30,40,50)
//print(1,2,3,4,5,6,7)
/*:
 ---
 ### Question
 - 위의 Variadic Parameter 외에 추가로 다른 숫자를 입력 파라미터로 받는 함수를 만들어보기
 ---
 */
//func arithmeticMean(_ numbers: Double..., _ last: Double) -> Double {
//  print(numbers)
//  print(last)
//}

//arithmeticMean(1, 2, 3, 5)


//func arithmeticMean(_ numbers: Double..., and last: Double) -> Double {
//  print(numbers)
//  print(last)
//}
//

//arithmeticMean(1, 2, 3, and: 5)


/*:
 ## Argument vs Parameter
 
 ![argparam](arg-param.png)
 - Parameter
   - 매개변수 = 인자 = Parameter
   - 인수를 담는 변수의 한 종류로서 해당 함수 내부 스코프에만 영향
   - 대부분 call by value 가 기본
   - call by reference 는 호출할 때 사용한 전달인자에까지 영향
 - Argument
   - 전달인자 = 인수 = 실인수 = Argument
   - 함수 호출 시 그에 필요한 데이터를 전달
 */


/*:
 ---
 ## Functions Without Parameters
 ---
 */

func sayHelloWorld() -> String {
  return "hello, world"
}

print( sayHelloWorld() )
print( "hello, world" )

/*:
 ---
 ## Functions Without Return Values
 ---
 */

func say(number: Int) {
  print(number)
}

func say(word: String) -> Void {
  print(word)
}

func say(something: String) -> () {
  print(something)
}

say(number: 1)
say(word: "1")
say(something: "1")


/*:
 ---
 ## Nested Functions
 - 외부에는 숨기고 함수 내부에서만 사용할 함수를 중첩하여 사용 가능
 ---
 */
func chooseStepFunction(backward: Bool, value: Int) -> Int {
  func stepForward(input: Int) -> Int {
    return input + 1
  }
  func stepBackward(input: Int) -> Int {
    return input - 1
  }
  
  if backward {
    return stepBackward(input: value)
  } else {
    return stepForward(input: value)
  }
}


var value = 4
chooseStepFunction(backward: true, value: value)
chooseStepFunction(backward: false, value: value)




 //## Practice
 //- 이름을 입력 값으로 받아서 출력하는 함수
func name(input: String)->String{
    print (input)
    return input
}
name(input:"민웅")
name(input:"대웅")
 //- 나이를 입력 값으로 받아서 출력하는 함수
func age(input: Int)->Int{
    print(input)
    return 0
}
age(input: 30)
// - 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func intro(name: String, age: Int) {
    print("제 이름은 \(name)이고, 나이는 \(age)살 입니다.")
}
intro(name: "민웅", age: 30)
// - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
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
// - 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
func multiplication(input1: Int, input2: Int) {
    print(input1 * input2)
}
//multiplication(input1: 10,input2: 21)
multiplication(input1: 10,input2: 3)
// - 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
func test(_ numbers:Double...)-> Double{
    var total = 0.0
    for number in numbers{
        total += number
    }
    print(total / Double(numbers.count))
    return total / Double(numbers.count)
}

test(3,8.25, 18.75, 28)



//: [Next](@next)
