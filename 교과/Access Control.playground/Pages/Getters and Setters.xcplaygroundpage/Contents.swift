//: [Previous](@previous)
//: - - -
//: # Getters and Setters
//: - - -
/***************************************************
 Getter 와 Setter 는 그것이 속하는 변수, 상수 등에 대해 동일한 접근 레벨을 가짐
 이 때 Getter 와 Setter 에 대해서 각각 다른 접근 제한자 설정 가능
 ***************************************************/


/***************************************************
 Setter 설정
 ***************************************************/

class TrackedString {   //set의 범위는 내부, get은 범위가 전체
//  public(set) var numberOfEdits = 0
//  fileprivate(set) var numberOfEdits = 0
  var numberOfEdits = 0
    
    //------------------옵저버, 옵저빙 이라고 함.............
  var value: String = "" {
    didSet {
      numberOfEdits += 1
    }// ----------------
  }
}

let trackedString = TrackedString()
//trackedString.numberOfEdits
//stringToEdit.value = "This string will be tracked."
//trackedString.numberOfEdits
//trackedString.numberOfEdits = 1
//stringToEdit.value += " This edit will increment numberOfEdits."
//trackedString.numberOfEdits
//trackedString.numberOfEdits = 2   //fileprivate일때 가능
//trackedString.value = "value changed"
//trackedString.numberOfEdits





/***************************************************
 Getter 와 Setter 에 대해 각각 명시적으로 표현
 ***************************************************/

public class TrackedString1 {
  public private(set) var numberOfEdits = 0
    //  fileprivate private(set) var numberOfEdits = 0  //getter는 fileprivate, setter는 private
  public var value: String = "" {   //get, set 둘 다 퍼블릭
    didSet {
      numberOfEdits += 1
    }
  }
  public init() {}
}


//: [Next](@next)
