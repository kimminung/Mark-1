//: [Previous](@previous)
/*:
 # Optionals
 */
/*:
 ---
 ### Question
 - 값이 0인 것과 없는 것의 차이는?  (Empty vs Valueless)
 ---
 */





















/*:
 ![optional](0vsNULL.jpg)
 */

/*:
 ---
 ## Optional
 * Optional 은 값이 없을 수 있는(absent) 상황에 사용
 * Objective-C 에는 없는 개념
 * 옵셔널 타입은 2가지 가능성을 지님
   - 값을 전혀 가지고 있지 않음
   - 값이 있으며, 그 값에 접근하기 위해 옵셔널을 벗겨(unwrap)낼 수 있음
 ---
 */


let possibleNumber = "123"
var convertedNumber = Int(possibleNumber)
type(of: convertedNumber)

type(of: Int("123"))
type(of: Int(3.14))
type(of: Int(3))
//Int?
//Optional<Int>



/*:
 ## Optional Type
 
 ![OptionalType](optional-type.png)
 */

// Type Declaration

var optionalType1: String? // = "123"
var optionalType2: Optional<Int> // = 1

type(of: optionalType1)
optionalType2

// Valueless state - nil

var optionalInt: Int? = 0
optionalInt = nil
optionalInt

// Init

var optionalIntInit = Optional<Int>(0)  // 값이 0이라고 있음
type(of: optionalIntInit)


// **Optional <-> NonOptional**
//opt -> non O
//opt <- non X

//var nonOptional1 = nil // 안됌

//var nonOptional2: Int = nil   // 타입이 인트여서 ㄴㄴ

//var nonOptional2: Int? = nil  // 물음표를 넣어서 옵셔널 타입을 명시

//var nonOptionalType: Int = optionalInt    // 값이 없어서 안된다

var integer = 1
optionalInt = integer
//integer = optionalInt //  반대로는 타입이 달라서 사용 불가
print(optionalInt)


/***************************************************
 Question
 - Optional 헤더 살펴보기
 - 아래 내용을 읽고 Objective-C 의 nil 과 Swift 의 nil 이 어떻게 다른지 말해보기
 
 -c = 힙의 메모리에 대한 주소가 nil
 -swift = nil이 하나의 타입(아무것도 없는 값이지만 내부적으로는 표현해주고 있다)
 
 Swift’s nil isn’t the same as nil in Objective-C.
 In Objective-C, nil is a pointer to a nonexistent object.
 In Swift, nil isn’t a pointer—it’s the absence of a value of a certain type.
 Optionals of any type can be set to nil, not just object types.
 ***************************************************/


/* 헤더
 
 public enum Optional<Wrapped> : ExpressibleByNilLiteral {
 
 /// The absence of a value.
 ///
 /// In code, the absence of a value is typically written using the `nil`
 /// literal rather than the explicit `.none` enumeration case.
 case none
 
 /// The presence of a value, stored as `Wrapped`.
 case some(Wrapped)
 
 /// Creates an instance that stores the given value.
 public init(_ some: Wrapped)
 
 /// Evaluates the given closure when this `Optional` instance is not `nil`,
 /// passing the unwrapped value as a parameter.
 ///
 /// Use the `map` method with a closure that returns a nonoptional value.
 /// This example performs an arithmetic operation on an
 /// optional integer.
 ///
 ///     let possibleNumber: Int? = Int("42")
 ///     let possibleSquare = possibleNumber.map { $0 * $0 }
 ///     print(possibleSquare)
 ///     // Prints "Optional(1764)"
 ///
 ///     let noNumber: Int? = nil
 ///     let noSquare = noNumber.map { $0 * $0 }
 ///     print(noSquare)
 ///     // Prints "nil"
 ///
 /// - Parameter transform: A closure that takes the unwrapped value
 ///   of the instance.
 /// - Returns: The result of the given closure. If this instance is `nil`,
 ///   returns `nil`.
 
 */



/*:
 ---
 ## If Statements and Forced Unwrapping
 ---
 */

if convertedNumber != nil {
  print("convertedNumber contains some integer value.")
  print("convertedNumber has an integer value of \(convertedNumber).")  //값이 반드시 있다고 표현해주는 상황
}


// ! = Forced Unwrapping    // .some(Wrapped) 값부분을 강제로 언랩

if convertedNumber != nil {
  print("convertedNumber has an integer value of \(convertedNumber!).")
}


print(convertedNumber)
print(convertedNumber!)



convertedNumber = nil
convertedNumber   //nil
//convertedNumber!  //error - 실행 되다가 마지막에 !를 만나면 실제로는 값이 없으므로 런타임에서 앱이 죽어버림

/*
 Fatal error: Unexpectedly found nil while unwrapping an Optional value
 
 error: Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).
 The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation
 */


/*:
 ---
 ## Optional Binding

 ![if](optional-binding-if.png)
 
 ![while](optional-binding-while.png)
 
 ![guard](optional-binding-guard.png)
 ---
 */
let actualNumber1 = Int(possibleNumber)
type(of: actualNumber1)

if let actualNumber = Int(possibleNumber) {
    type(of: actualNumber1)
  print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
  print("\"\(possibleNumber)\" could not be converted to an integer")
}
// "\ 내용 \" 큰따옴표 " 를 출력하기 위함

type(of: actualNumber1)

var optionalStr: String? = "Hello, Optional"

// let

if let optionalStr = optionalStr {
  optionalStr
} else {
  "valueless string"
}

// var

if var str = optionalStr {
  str += "😍"
  str
}




// Out of scope

func doSomething(str: String?) {
    print(str)  //"Optional("something")\n"
//    type(of: str)   //Optional<String>.Type
  guard let str = str else {
//    print(str)    //아직 str에 값이 없는 상태인데 출력하려고 하는 상황이라 에러
    //type(of: str)
    return
  }

  print(str)    //"something\n"
//    type(of: str)   //String.Type
}

doSomething(str: "something")







// Many optional bindings and Boolean conditions in a single if statement

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber) < 100")
}

// ==

if let firstNumber = Int("4") {
  if let secondNumber = Int("42") {
    if firstNumber < secondNumber && secondNumber < 100 {
      print("\(firstNumber) < \(secondNumber) < 100")
    }
  }
}


/*:
 ## IUO (Implicitly Unwrapped Optionals)
 */


let possibleString: String? = "An optional string."
let forcedString: String = possibleString!  //!가 옵셔널 강제로 없앰
type(of: possibleString)
type(of: forcedString)


let assumedString: String! = "An implicitly unwrapped optional string." //반드시 값이 있다는것을 보장할 때 IUO라고 표현하고 미리 값에 써줌
let implicitString: String = assumedString
type(of: assumedString)
type(of: implicitString)


if assumedString != nil {
  print(assumedString!)
}

if let definiteString = assumedString {
  print(definiteString)
}

/***************************************************
 - 추후 어느 순간에서라도 nil 이 될 수 있는 경우에는 이 것을 사용하지 말아야 함
 - nil value 를 체크해야 할 일이 생길 경우는 일반적인 옵셔널 타입 사용
 ***************************************************/



/*:
 ## Nil-coalescing Operator
 */

optionalStr = nil

let result: String
if optionalStr != nil {
   result = optionalStr!
} else {
   result = "???"
}

 let result1 = optionalStr ?? "???"
print(optionalStr)
print(result)
print(result1)

//  ?? = nil이 아니면 optionalStr을, nil이면 "???"을 띄움



//Example

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)


/***************************************************
 The nil-coalescing operator is shorthand for the code below:
 // a ?? b
 // a != nil ? a! : b
 ***************************************************/

/*:
 ## Optional Chaining
 */

class Person {
  var residence: Residence = Residence()
}

class Residence {
  var numberOfRooms = 1
  var address: String?
}

let john = Person()
let roomCount = john.residence.numberOfRooms



/***************************************************
 Question
 residence 변수의 타입을 옵셔널 타입으로 변경하게 될 경우?
 ***************************************************/












class Person1 {
  var residence: Residence1?    //기본값을 주지 않음. nil값으로 자동 초기화 - init이 필요 없음
}
class Residence1 {
    var numberOfRooms/*: Int */= 1
  var address: String?
}

let edward = Person1()
//edward.residence = Residence1()

let roomCount1 = edward.residence?.numberOfRooms
print(roomCount1)
//let roomCount2 = edward.residence!.numberOfRooms
//print(roomCount2)
type(of: roomCount1)
//type(of: roomCount2)

//뒤에 있는 값은 앞에 있는 값에 영향을 받음

if let roomCount = edward.residence?.numberOfRooms {
  print("John's residence has \(roomCount) room(s).")
} else {
  print("Unable to retrieve the number of rooms.")
}




//john.residence = Residence()





/*:
 ---
 ## Defining Model Classes for Optional Chaining
 ---
 */

/***************************************************
 - 주소지를 나타내는 클래스를 만들 때 옵셔널을 이용한다면?
 - 배열에 옵셔널은 어떤 식으로 사용할까
 ***************************************************/






class Address {
  var buildingName: String?
    //var buildingName: String = "xx"
  var buildingNumber: String?
  var street: String?
  func buildingIdentifier() -> String? {
    if let buildingNumber = buildingNumber, let street = street {
      return "\(buildingNumber) \(street)"
    } else if buildingName != nil {
      return buildingName
    } else {
      return nil
    }
  }
}



// Accessing Properties Through Optional Chaining


//let someAddress = Address()
//someAddress.buildingNumber = "29"
//someAddress.street = "Acacia Road"
//
//john.residence?.address = someAddress





// 배열 옵셔널

/***************************************************
 아래 두 가지의 차이점이 무엇이고 어떻게 다른지 확인해보기
 ***************************************************/

var arr1: [Int]? = [1,2,3]  //배열 자체 옵셔널
var arr2: [Int?] = [1,2,3]  //배열 값에 대한 옵셔널

var arr3: [Int]? = nil
var arr4: [Int?] = [1,2,3, nil, nil]

//var arr5: [Int]? = [1,2,3, nil, nil]  //불가
//var arr6: [Int?] = nil                //불가


//다시 손대보기..
//if let firstRoomName = arr3?[0].name {
//  print("The first room name is \(firstRoomName).")
//} else {
//  print("Unable to retrieve the first room name.")
//}


arr1?.count
arr1?[1]

arr2.append(nil)
arr2.count
arr2[1]
arr2.last


/*:
 ---
 ## Optional Function Types
 ---
 */


let function: (() -> Int?)? = nil
function?()
//function!()




/*:
 ---
 ### Question
 - 친구 목록을 출력하는 내용을 구현
   - friendList(배열) 옵셔널 변수 만들기
   - func addFriend(name: String) 만들기
   - printFriendList() 함수 만들기
 - 지금까지 구현해봤던 함수나 클래스 속성을 옵셔널을 이용해 적용할 수 있었는지 확인해보고 수정해보기
 ---
 */

//: [Next](@next)
