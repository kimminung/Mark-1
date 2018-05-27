//: [Previous](@previous)
//: # Escaping02
import Foundation

final class Callee {
//  func doSomething(closure: () -> Void) {    // Error
  func doSomething(closure: @escaping () -> Void) {
    DispatchQueue.main.async {
      closure()
    }
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
//    callee.doSomething {
//      self.name = "Tom"    // Leak
//    }
//    callee.doSomething { [weak self] in
//      self?.name = "Tom"    // Release
//    }
    
//    callee.doSomething { [weak self] in
//      DispatchQueue.main.async {
//        self?.name = "Tom"   // Release
//      }
//    }
//    callee.doSomething {
//      DispatchQueue.main.async { [weak self] in
//        self?.name = "Tom"   // Leak
//      }
//    }
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
