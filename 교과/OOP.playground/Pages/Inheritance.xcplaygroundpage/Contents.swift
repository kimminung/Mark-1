//: [Previous](@previous)
import UIKit
//: - - -
//: # Inheritance
//: - - -

class Animal {
  var brain = true
  var legs: Int
  init(legs: Int = 0) {
    self.legs = legs
  }
}


class Human: Animal {
  override init(legs: Int = 2) {
    super.init(legs: legs)
  }
}


class Pet: Animal {
  var fleas: Int
  init(fleas: Int = 0) {
    self.fleas = fleas
    super.init(legs: 4)
  }
}


class Dog: Pet {
  override init(fleas: Int = 8) {
    super.init(fleas: fleas)
  }
}


class Cat: Pet {
  override init(fleas: Int = 4) {
    super.init(fleas: fleas)
  }
}


print("\n---------- [ Animal ] ----------\n")
let animal = Animal()
print("animal brain :", animal.brain)
print("animal legs :", animal.legs)

print("\n---------- [ Human ] ----------\n")
let human = Human()
print("human brain :", human.brain)
print("human legs :", human.legs)

print("\n---------- [ Pet ] ----------\n")
let pet = Pet()
print("pet brain :", pet.brain)
print("pet legs :", pet.legs)
print("pet fleas :", pet.fleas)

print("\n---------- [ Dog ] ----------\n")
let dog = Dog()
print("dog brain :", dog.brain)
print("dog legs :", dog.legs)
print("dog fleas :", dog.fleas)

print("\n---------- [ Cat ] ----------\n")
let cat = Cat()
print("cat brain :", cat.brain)
print("cat legs :", cat.legs)
print("cat fleas :", cat.fleas)



class Shape {
  var color = UIColor.black
  
  init(color: UIColor) {
    self.color = color
  }
  
  func draw() {
    print("draw shape")
  }
}




/*:
 ## Subclassing
 
 ![subclassing](subclassing.png)
 */
class Rectangle: Shape {
  var cornerRadius = 0.0
  
  init(color: UIColor, cornerRadius: Double = 10.0) {
    self.cornerRadius = cornerRadius 
    super.init(color: color)
  }
}

let rect = Rectangle(color: UIColor.blue)
rect.color
rect.cornerRadius
rect.draw()


/*:
 ## Overriding
 */
class Rectangle2: Shape {
  override var color: UIColor {
    get {
      return UIColor.red
    }
    set {
      self.color = UIColor.red
    }
  }
  
  override func draw() {
    super.draw()
    
    print("draw rect")
  }
}

let rect2 = Rectangle2(color: UIColor.blue)
rect2.draw()


/*:
 ## final
 */
final class Circle: Shape {
  
}

//class Oval: Circle {
//
//}


//: [Next](@next)
