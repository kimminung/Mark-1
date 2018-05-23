//: [Previous](@previous)
/*:
 # Class
 ![Class](class.png)
 */

class Dog {
  var color: String!
  var eyeColor: String!
  var height: Double!
  var weight: Double!
  
  func sit() {
    print("sit")
  }
  func layDown() {
    print("layDown")
  }
  func shake() {
    print("shake")
  }
}


let bobby: Dog = Dog()
bobby.color = "white"
bobby.sit()


let tori = Dog()
tori.color = "brown"
tori.layDown()





/***************************************************
 Class Identity Operators
 
 === : Returns true when two constants or variables pointing to a same instance
 ***************************************************/


class SampleClass: Equatable {
  let myProperty: String
  init(s: String) {
    myProperty = s
  }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
  return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")


spClass1 == spClass2 // true
spClass1 != spClass2 // false


spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")



//: [Next](@next)
