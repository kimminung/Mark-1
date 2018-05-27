//: [Previous](@previous)
/*:
 # Access Control
 * 다른 모듈의 코드 또는 다른 소스 파일 등으로부터 접근을 제한하는 것
 * 세부 구현 내용을 숨기고 접근할 수 있는 인터페이스 지정 가능
 */
/*:
 ---
 ## Access Levels
 Swift 에서는 5가지 종류의 접근 레벨 제공
 * open - 가장 개방적
 * public
 * internal - 기본 레벨
 * fileprivate
 * private - 가장 제한적
 ---
 */
/*:
 ---
 ## Access Control Syntax
 ---
 */
// explicitly

open class SomeOpenClass {}
public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}


public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}


// implicitly internal

class ImplicitlyInternalClass {}
let implicitlyInternalConstant = 0

/*
 internal class ImplicitlyInternalClass {}
 internal let implicitlyInternalConstant = 0
 */

/*:
 ---
 ## Custom Types
 ---
 */
public class SomePublicClass1 {                // explicitly public class
  public var somePublicProperty = 0            // explicitly public class member
  var someInternalProperty = 0                 // implicitly internal class member
  fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
  private func somePrivateMethod() {}          // explicitly private class member
}

class SomeInternalClass1 {                     // implicitly internal class
//    public var somePublicProperty = 0 오류는 없지만 이런식으로 사용하면 안됨
  var someInternalProperty = 0                 // implicitly internal class member
  fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
  private func somePrivateMethod() {}          // explicitly private class member
}

fileprivate class SomeFilePrivateClass1 {      // explicitly file-private class
  func someFilePrivateMethod() {}              // implicitly file-private class member
  private func somePrivateMethod() {}          // explicitly private class member
}

private class SomePrivateClass1 {              // explicitly private class
  func somePrivateMethod() {}                  // implicitly private class member
}


//: [Next](@next)
