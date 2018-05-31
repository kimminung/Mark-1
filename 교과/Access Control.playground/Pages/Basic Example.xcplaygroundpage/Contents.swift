//: [Previous](@previous)


/***************************************************
 Open / Public
 ***************************************************/

//둘 다 동일한 역할이지만 내용을 넣었을때 다른 결과가 발생함
class SomeOpenClass {       //SomeOpenClass라는 클래스를 만들거다
  open var name = "name"    //
  open var age = 0
}

class SomePublicClass {
  public var name = "name"
  public var age = 0
}

let someOpenClass = SomeOpenClass()
someOpenClass.name
someOpenClass.age

let somePublicClass = SomePublicClass()
somePublicClass.name
somePublicClass.age


//: ---
/***************************************************
 Internal
 ***************************************************/

class SomeInternalClass {
  var name = "name"
  var age = 0
}

let someInternalClass = SomeInternalClass()
someInternalClass.name
someInternalClass.age

//: ---
/***************************************************
 fileprivate
 ***************************************************/

class SomeFileprivateClass {
  fileprivate var name = "name"
  fileprivate var age = 0
}

//let someFileprivateClass = SomeFileprivateClass()
//someFileprivateClass.name
//someFileprivateClass.age

//: ---

class SomePrivateClass {
  private var name = "name"
  private var age = 0
}

//let somePrivateClass = SomePrivateClass()
//somePrivateClass.name
//somePrivateClass.age



/***************************************************
 1. Command Line Tool 로 체크
 2. UIViewController, Int 등 애플 프레임워크의 접근 제한자 확인
 ***************************************************/






//: [Next](@next)
