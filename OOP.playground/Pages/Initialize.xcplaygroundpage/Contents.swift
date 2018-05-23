//: [Previous](@previous)
/*:
 ---
 ## Class Initialize
 ---
 */
/*:
 ---
 ### Class 의 초기화 메서드
 - 초기화 메서드(init)가 필수가 아닌 경우 : 모든 저장 프로퍼티에 (Stored Properties) 초기값이 설정됨
 - 초기화 메서드(init)가 필수인 경우 : 저장 프로퍼티 중 하나 이상이 초기값 미설정됨
 ---
 */

/***************************************************
 초기화 함수가 필수가 아닌 경우 - 모든 저장 프로퍼티 (Stored Properties) 에 초기값 설정
 단순히 ClassName()으로 생성 가능
 ***************************************************/

class Dog1 {
  let name = "Tori"
  let color = "Brown"
  
  func bowwow() {
    print("Dog1 Bowwow!")
  }
}


/***************************************************
 초기화 함수가 필요한 경우 - 저장 프로퍼티 중 하나 이상이 초기값 미설정
 
 ==> init 메서드를 통해 설정
 ***************************************************/

// 파라미터 없는 경우

class Dog2 {
  let name: String
  let color: String
  
  init() {
    name = "Tori"
    color = "Brown"
  }
  
  func bowwow() {
    print("Dog2 Bowwow!")
  }
}


// 파라미터를 통해 설정하는 경우

class Dog3 {
  let name: String
  let color: String

  init() {
    //
    name = "Tori"
    color = "Brown"
  }
  init(name: String) {
    self.name = name
    color = "Brown"
  }
  init(name: String, color: String) {
    self.name = name
    self.color = color
  }
  
  func bowwow() {
    print("Dog3 Bowwow!")
  }
}


let tori1 = Dog1()
tori1.name
tori1.color
tori1.bowwow()

let tori2 = Dog2()
tori2.bowwow()

let tori3 = Dog3(name: "Tori")
let tori4 = Dog3(name: "Tori", color: "Brown")


//: [Next](@next)
