//: [Previous](@previous)
//: # NoEscaping
//: * Swift 3.0 이전 - @escaping 이 기본
//: * Swift 3.0 이후 - @noescaping 이 기본
//: ##
//: * @noescaping -> @noescaping 가능
//: * @noescaping -> @escaping   불가능
//: * @escaping   -> @noescaping, @escaping 둘 다 가능

final internal class Callee {
  func doSomething(closure: () -> Void) {
    closure()
  }
  init() {
    print("Callee was initialized")
  }
  deinit {
    print("Callee was deinitialized")
  }
}

final class Caller {
  let callee = Callee()
  var name = "James"
  
  func doSomething() {
    callee.doSomething {
      name = "Tom"
    }
  }
  var closure: (() -> ()) = {}
  func noEscapingClosure(_ arg: ()->()) {
//    self.closure = arg    // required @escaping
    someFunc(arg)
  }
  
  func someFunc(_ arg: () -> ()) {
    arg()
//    self.closure = arg    // required @escaping
  }
  
  init() {
    print("Caller was initialized")
  }
  deinit {
    print("Caller was deinitialized")
  }
}

print("[ Init ]")
var caller: Caller? = Caller()

print("\n[ Deinit ]")
caller?.doSomething()
caller = nil

print("\n[ End ]")

//: [Next](@next)
