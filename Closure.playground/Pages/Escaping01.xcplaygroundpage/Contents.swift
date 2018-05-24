//: [Previous](@previous)
//: # Escaping01
import Foundation

final class Callee {
//  func doSomething(closure: () -> Void) {    // @noescaping
//    closure()
//  }
  func doSomething(closure: @escaping () -> Void) {  // @escaping
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
//    callee.doSomething {
//      name = "Tom"     // self keyword (X)
//    }
    callee.doSomething {
      self.name = "Tom"   // self keyword  (O) @escaping
    }
    
    callee.doSomething {
//      DispatchQueue.main.async {
//        self.name = "Tom"    // Leak
//      }
      
//      DispatchQueue.main.async { [weak self] in
//        self?.name = "Tom"   // Release
//      }
    }
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
