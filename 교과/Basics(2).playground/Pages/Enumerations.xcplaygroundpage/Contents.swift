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

enum ASCIIControlCharacter1: Character {
  case tab = "\t"
  case lineFeed = "\n"
  case carriageReturn = "\r"
}

ASCIIControlCharacter1.tab
ASCIIControlCharacter1.lineFeed
ASCIIControlCharacter1.carriageReturn

ASCIIControlCharacter1.tab.rawValue // "\t"를 "  "로 표현
ASCIIControlCharacter1.lineFeed.rawValue

print("111\n행바꿈\t탭") //"111\n행바꿈    탭\n"

enum Weekday: Int {
  case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

Weekday.wednesday
Weekday.wednesday.rawValue


enum WeekdayName: String {
  case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

/*
enum WeekdayName: String {
    case sunday, monday = "Mon", tuesday, wednesday, thursday, friday, saturday
}
*/

WeekdayName.monday
WeekdayName.monday.rawValue


/*:
 ---
 ### Implicitly Assigned Raw Values
 ---
 */
enum WeekdayAgain: Int {
  case sunday, monday = 100, tuesday = 101, wednesday, thursday, friday, saturday
}
//   case sunday = 0 , monday = 100, tuesday = 101, wednesday, thursday, friday, saturday
//}

WeekdayAgain.sunday
WeekdayAgain.sunday.rawValue    // 아무것도 없을때 int형으로 그냥 0

WeekdayAgain.wednesday
WeekdayAgain.wednesday.rawValue


enum WeekdayNameAgain: String {
  case sunday, monday = "mon", tuesday = "tue", wednesday, thursday, friday, saturday
}
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
//
//enum PlanetIntRaw1: Int {
//    case mer = 1, ven, ear, mar, jup, sat, ura, nept
//}
//
//"중간부분 까먹음"
//PlanetIntRaw (Value: PlanetIntRaw1.mar.rawValue)!)    //옵셔널 ! 를 씀

let possiblePlanet = PlanetIntRaw(rawValue: 7)
let positionToFind = 11

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


// Nested

//Function

enum Device: String{
    case iPhone, iPad, tv, watch

    func printType() {
        switch self {
        case .iPad, .iPhone, .tv:
            print("device :", self)
        case .watch:
            print("watch :", self)
        }
    }
}

//let..
//
//


//Enumerations

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
    
    func attributes() -> (weight: Int, armor: Int) {
        switch self {
        case .helmet(let w, let a):
            return (weight: w.rawValue * 2, armor: a.rawValue * 4)
        }
    }
}

let woodenHelmet = Wearable.helmet(weight: .light, armor: .heavy)
woodenHelmet.attributes()
print(woodenHelmet)



//Q. 새로운 변수를 만들거나 새 값을 넣지 않고 enum 의 값을 변경하려면 어떻게 해야할까요?
//아직 못 풀었음

enum RemoteControl {
    case on, off
    func next() {
        //Code,,,
    }
}

var remoteControl = RemoteControl.on
remoteControl.next()
remoteControl.next()


//Mutating

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


//Recursion (재귀)

//Recursion Function
// - 자기 자신을 재참조하는 함수

//count = 0
//func recursiveFunction () {
//    guard count != 5 else { return }
//    count += 1
//    print(count)
//
//    recursiveFunction()
//    print("lastline")
//}
//recursiveFunction()
//factorial

func factorialLoop(_ N: Int) -> Int {
    var sum = 1
    for idx in 1...N {
        sum += idx
    }
    return sum
}
factorialLoop(5)

func factorialRecursion(N: Int) -> Int {
    guard N > 1 else { return N }
    return N * factorialRecursion(N: N - 1)
}

factorialRecursion(N: 5)

//Factorial Example
//index  : 1, 2, 3,  4,   5,   6,    7,       8,       9, ...
//number : 1, 2, 6, 24, 120, 720, 5040, , 40320, 362,880, ...

//func factorial(N: Int) -> Int {
//    guard
//}

//Fibonacci Example
// index  : 1, 2, 3, 4, 5, 6, 7, 8, ...
// number : 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

//for로 구현
func fibonacciLoop(N: Int) -> Int {
    guard N > 1 else {
        return N
    }
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

fibonacciLoop(N: 10)
//재귀로 구현
func fibonacciRecursiveFunction(N: Int) -> Int {
guard N > 2 else { return N - 1}
return fibonacciRecursiveFunction(N: N - 1) + fibonacciRecursiveFunction(N: N - 2)
}

fibonacciRecursiveFunction(N: 10)
