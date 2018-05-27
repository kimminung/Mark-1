import Foundation

//: [Previous](@previous)
/*:
 ---
 # Enumerations
 - 연관된 값의 그룹에 대해 공통 타입을 정의한 뒤 type-safe 하게 해당 값들을 사용 가능
 ---
 */

enum SomeEnumeration {
  // enumeration definition goes here
}

// Enumeration Type 이름은 Pascal Case
// 각 case 는 Camel Case

enum CompassPoint {
  case north
  case south
  case east
  case west
}

enum Planet {
  case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead1 = CompassPoint.west
directionToHead1 = .east

var directionToHead2: CompassPoint = .north



/*:
 ## Matching Enumeration Values
 */
let directionToHead = CompassPoint.south

switch directionToHead {
case .north:
  print("Lots of planets have a north")
case .south:
  print("Watch out for penguins")
case .east:
  print("Where the sun rises")
case .west:
  print("Where the skies are blue")
}


let somePlanet = Planet.earth

switch somePlanet {
case .earth:
  print("Mostly harmless")
default:
  print("Not a safe place for humans")
}


/*:
 ---
 ## Associated Values
 ---
 */

enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
type(of: productBarcode)

print(productBarcode)



switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
  print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
  print("QR code: \(productCode).")
}


switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
  print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
  print("QR code: \(productCode).")
}


/*:
 ---
 ## Raw Value
 - Strings, Characters, or any of the Integer or Floating-point number types
 - raw value 는 해당 Enumeration 내에서 반드시 고유한 값이어야 함.
 ---
 */
print("\n---------- [ Raw Value ] ----------\n")

//enum ASCIIControlCharacter {
//  case tab
//  case lineFeed
//  case carriageReturn
//}
//
//ASCIIControlCharacter.tab
//ASCIIControlCharacter.lineFeed
//ASCIIControlCharacter.carriageReturn


enum ASCIIControlCharacter1: Character {
  case tab = "\t"
  case lineFeed = "\n"
  case carriageReturn = "\r"
}

enum Weekday: Int {
  case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

Weekday.wednesday
Weekday.wednesday.rawValue


enum WeekdayName: String {
  case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

WeekdayName.monday
WeekdayName.monday.rawValue


/*:
 ---
 ### Implicitly Assigned Raw Values
 ---
 */
enum WeekdayAgain: Int {
  case sunday, monday = 100, tuesday = 101, wednesday, thursday, friday, saturday
//  case sunday = 0, monday = 1, tuesday = 2, wednesday, thursday, friday, saturday
}

WeekdayAgain.sunday
WeekdayAgain.sunday.rawValue

WeekdayAgain.wednesday
WeekdayAgain.wednesday.rawValue



enum WeekdayNameAgain: String {
  case sunday, monday = "mon", tuesday = "tue", wednesday, thursday, friday, saturday
}

WeekdayNameAgain.sunday
WeekdayNameAgain.sunday.rawValue

WeekdayNameAgain.wednesday
WeekdayNameAgain.wednesday.rawValue


/*:
 ---
 ### Initializing from a Raw Value
 ---
 */

enum PlanetIntRaw: Int {
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

PlanetIntRaw(rawValue: 7)

let possiblePlanet = PlanetIntRaw(rawValue: 2)
//let positionToFind = 7
let positionToFind = 11

//PlanetIntRaw(rawValue: 5)
//PlanetIntRaw(rawValue: 10)

if let somePlanet = PlanetIntRaw(rawValue: positionToFind) {
  switch somePlanet {
  case .earth:
    print("Mostly harmless")
  default:
    print("Not a safe place for humans")
  }
} else {
  print("There isn't a planet at position \(positionToFind)")
}


/*:
 ---
 ## Nested
 ---
 */

// Function

enum Device: String {
  case iPhone, iPad, tv, watch
  
  func printType() {
    switch self {
    case .iPad, .iPhone, .tv:
      print("device :", self)
    case .watch:
      print("apple Watch")
    }
  }
}


let iPhone = Device.iPhone
iPhone.printType()



// Enumerations

enum Wearable {
  enum Weight: Int {
    case light = 1
    case heavy = 2
  }
  enum Armor: Int {
    case light = 2
    case heavy = 4
  }
  case helmet(weight: Weight, armor: Armor)
  case boots
  
  func attributes() -> (weight: Int, armor: Int) {
    switch self {
    case .helmet(let w, let a):
      return (weight: w.rawValue * 2, armor: a.rawValue * 4)
    case .boots:
      return (2, 4)
    }
  }
}

var woodenHelmet = Wearable.helmet(weight: .light, armor: .heavy)
woodenHelmet.attributes()
print(woodenHelmet)

let boots = Wearable.boots


/*:
 ---
 ### Question
 - 새로운 변수를 만들거나 새 값을 넣지 않고 enum 의 값을 변경하려면 어떻게 해야 할까요?
 ---
 */
enum RemoteControl {
  case on, off
  func next() {
    // Code...
  }
}


var remoteControl = RemoteControl.on
remoteControl.next()
remoteControl.next()


/*:
 ---
 ## Mutating
 ---
 */

enum NewRemoteControl {
  case on, off
  
  mutating func next() {
    switch self {
    case .off:
      self = .on
    case .on:
      self = .off
    }
  }
}

var newRemoteControl = NewRemoteControl.on
newRemoteControl.next()
newRemoteControl.next()

/*:
 ---
 ## Recursion (재귀)
 ---
 */
/*:
 ---
 ### Recursive Function
 - 자기 자신을 재참조하는 함수
 ---
 */
print("\n---------- [ Recursive Function ] ----------\n")
/***************************************************
 어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.
 - 학생 : "재귀함수가 뭔가요?"
 - 교수 : "잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
         마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.
         그의 답은 대부분 옳았다고 하네.
         그런데 어느날, 그 선인에게 한 선비가 찾아와서 물었어."
 
         "재귀함수가 뭔가요?"
         "잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어...
          마을 사람들은 ...."
 ***************************************************/

// for Loop

var count = 0
for _ in 0..<5 {
  count += 1
}


// recursion

print("\n---------- [ Recursion ] ----------\n")
count = 0


func recursiveFunction() {
  guard count != 5 else { return }
  count += 1
  print(count)
  
  recursiveFunction()   // <--------
  print("lastline", count)
}

recursiveFunction()

/*:
 ---
 ### Question
 반복문과 재귀함수를 써서 각각 구현해보고 차이점을 생각해보기
 - Factorial
 - Fibonacci
 ---
 */


// Factorial Example
// index  : 1, 2, 3,  4,   5,   6,    7,       8,       9, ...
// number : 1, 2, 6, 24, 120, 720, 5040, , 40320, 362,880, ...


// Fibonacci Example
// index  : 1, 2, 3, 4, 5, 6, 7,  8,  9, 10, 11, 12, ...
// number : 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...



/***************************************************
 Factorial - For Loop
 ***************************************************/

func factorialLoop(N: Int) -> Int {
  var sum = 1
  for idx in 1...N {
    sum *= idx
  }

  return sum
}

factorialLoop(N: 3)
factorialLoop(N: 5)
factorialLoop(N: 7)
factorialLoop(N: 9)



/***************************************************
 Factorial - Recursion
 ***************************************************/

func factorialRecursiveFunction(N: Int) -> Int {
  guard N > 1 else { return N }
  return N * factorialRecursiveFunction(N: N - 1)
}

factorialRecursiveFunction(N: 3)
factorialRecursiveFunction(N: 5)
factorialRecursiveFunction(N: 7)
factorialRecursiveFunction(N: 9)




/***************************************************
 Fibonacci - For Loop
 ***************************************************/


// Fibonacci Example
// index  : 1, 2, 3, 4, 5, 6, 7,  8,  9, 10, 11, 12, ...
// number : 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

func fibonacciLoop(N: Int) -> Int {
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
  
  return num1 > num2 ? num1 : num2
}

fibonacciLoop(N: 2)
fibonacciLoop(N: 3)
fibonacciLoop(N: 4)
fibonacciLoop(N: 5)

fibonacciLoop(N: 10)
fibonacciLoop(N: 11)
fibonacciLoop(N: 12)


/***************************************************
 Fibonacci - Recursion
 ***************************************************/

func fibonacciRecursiveFunction(N: Int) -> Int {
  guard N > 2 else { return N - 1 }
  return fibonacciRecursiveFunction(N: N - 1) + fibonacciRecursiveFunction(N: N - 2)
}


fibonacciRecursiveFunction(N: 1)
fibonacciRecursiveFunction(N: 2)
fibonacciRecursiveFunction(N: 3)
fibonacciRecursiveFunction(N: 4)
fibonacciRecursiveFunction(N: 5)

fibonacciRecursiveFunction(N: 10)
fibonacciRecursiveFunction(N: 11)
fibonacciRecursiveFunction(N: 12)


/*:
 ---
 ## Recursive Enumerations
 - 자기 자신을 참조하는 Enumeration 형식
 ---
 */
print("\n---------- [ Recursive Enumerations ] ----------\n")

//enum ArithmeticExpression {
//  case number(Int)
//  case addition(ArithmeticExpression, ArithmeticExpression)
//  case multiplication(ArithmeticExpression, ArithmeticExpression)
//}


//enum ArithmeticExpression {
//  case number(Int)
//  indirect case addition(ArithmeticExpression, ArithmeticExpression)
//  indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
//}

indirect enum ArithmeticExpression {
  case number(Int)
  case addition(ArithmeticExpression, ArithmeticExpression)
  case multiplication(ArithmeticExpression, ArithmeticExpression)
}


let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))


/*:
 ---
 ### Question
 - 해당 enum 타입의 내용은 어떤 식으로 출력할까요?
 ---
 */


func evaluate(_ expression: ArithmeticExpression) -> Int {
  switch expression {
  case let .number(value):
    return value
  case let .addition(left, right):
    return evaluate(left) + evaluate(right)
  case let .multiplication(left, right):
    return evaluate(left) * evaluate(right)
  }
}


evaluate(sum)
evaluate(product)



/*:
 ---
 ### Question
 1단계 : 아래 구조를 가진 폴더와 파일을 Recursive enumeration 을 이용하여 표현 (Array 이용)

 2단계 : 폴더 입력 시 폴더 내용 전체, 파일 입력 시 해당 파일 정보를 출력하는 함수 구현

 - Folder : Apple2
   - Folder : Apple1
     - File : swift.txt, iOS.txt, iOSSchool.txt
 ---
 */
var intArray = [1, 2, 3]
var strArray = ["1", "2", "3"]

for i in intArray {
  print(i)
}



/***************************************************
 1단계
 ***************************************************/


//
//enum FileNode {
//  case file(name: String)
//  indirect case folder(name: String, files: [FileNode])
//}

//let swift = FileNode.file(name: "swift.txt")
//let iOS = FileNode.file(name: "iOS.txt")
//let iOSSchool = FileNode.file(name: "iOSSchool.txt")
//
//let appleFolder1 = FileNode.folder(name: "Apple1", files: [swift, iOS, iOSSchool])
//let appleFolder2 = FileNode.folder(name: "Apple2", files: [appleFolder1])



/***************************************************
 2단계
 ***************************************************/

//
//enum FileNode {
//  case file(name: String)
//  indirect case folder(name: String, files: [FileNode])
//
//  func printFiles() {
//    switch self {
//    case .file(let name):
//      print("File :", name)
//    case .folder(let folderName, files: let files):
//      print("Folder :", folderName)
//
//      for file in files {
//        file.printFiles()
//      }
//    }
//  }
//}
//
//
//let swift = FileNode.file(name: "swift.txt")
//let iOS = FileNode.file(name: "iOS.txt")
//let iOSSchool = FileNode.file(name: "iOSSchool.txt")
//
//let appleFolder1 = FileNode.folder(name: "Apple1", files: [swift, iOS, iOSSchool])
//let appleFolder2 = FileNode.folder(name: "Apple2", files: [appleFolder1])
//
//appleFolder2.printFiles()
//


//: [Next](@next)
