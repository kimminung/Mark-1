//: [Previous](@previous)
/*:
 ---
 # Types
  ---
 */
/*:
 ---
 ## Tuple
 ---
 */
/***************************************************
 Tuple 유형은 자동으로 추론되며 명시적으로 지정 불가능
 튜플 유형에 대한 엑세스 수준은 해당 튜플에 사용된 모든 유형 중 가장 제한적인 엑세스 수준에 맞춰지게 됨
 ***************************************************/

//public class SomePublicClass {}
internal class SomeInternalClass {}
//fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}


fileprivate func returnTupleFunction() -> (SomeInternalClass, SomePrivateClass) {
//private func returnTupleFunction() -> (SomeInternalClass, SomePrivateClass) {
//func returnTupleFunction() -> (SomeInternalClass, SomePrivateClass) {
  // function implementation goes here
  return (SomeInternalClass(), SomePrivateClass())
}



/*:
 ---
 ## Enumeration Types
 ---
 */

/***************************************************
 아래 두 개의 차이는?
 ***************************************************/

//private enum 방위 {
//  case 동, 서, 남, 북
//}
//
//enum 방위 {   //안에 사용할 수 없음
//  private case 동
//  private case 서
//  private case 남
//  private case 북
//}
//
//
//let enumeration = 방위.남
//switch enumeration {
//case .동,작.서:    //private의 범위를 넘어선 . 동작
//  print("좌우")
//case .남, .북:
//  print("상하")
//}


/*:
 ---
 ## Nested Types
 Access Control Syntax 의 Custom Types 참고
 * Private  ->  Private
 * Fileprivate  ->  Fileprivate
 * Internal  ->  Internal
 * Public  ->  Internal
 * Open  ->  Internal
 ---
 */


/*:
 ---
 ## Type Aliases
 ---
 */
//타입의 별칭을 지정

class AliasClass {
  let someProperty = 1
}

//public typealias Typealiases = AliasClass
//internal typealias Typealiases = AliasClass
//fileprivate typealias Typealiases = AliasClass

//let aliasesInstance = Typealiases()
//aliasesInstance.someProperty




//: [Next](@next)
