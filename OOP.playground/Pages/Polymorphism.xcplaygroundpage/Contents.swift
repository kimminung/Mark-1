//: [Previous](@previous)
//: - - -
//: # Polymorphism
//: * Overloading
//: * Overriding
//: - - -

//: ## Overloading
/***************************************************
 1. 다른 파라미터 이름
 2. 다른 파라미터 타입
 3. 다른 파라미터 개수
 ***************************************************/

print("\n---------- [ Overloading ] ----------\n")

func printParameter() {
  print("No param")
}

//func printParameter() -> String {   // Error
//  print("No param")
//}

func printParameter(param: Int) {
  print("Input :", param)
}

func printParameter(_ param: Int) {
  print("Input :", param)
}

print("=====")
printParameter()
printParameter(param: 1)
printParameter(1)


// ---------

func printParameter(param: String) {
  print("Input :", param)
}

func printParameter(_ param: String) {
  print("Input :", param)
}

func printParameter(name param: String) {
  print("Input :", param)
}

//func printParameter(param name: String) {   // Error
//  print("Input :", name)
//}


print("=====")
printParameter(param: "hello")
printParameter("hello")
printParameter(name: "Hello")


/////////

func printParameter(param: String, param1: String) {
  print("Input :", param, param1)
}

func printParameter(_ param: String, _ param1: String) {
  print("Input :", param, param1)
}

func printParameter(_ param: String, param1: String) {
  print("Input :", param, param1)
}

func printParameter(param: String, _ param1: String) {
  print("Input :", param, param1)
}


print("=====")
printParameter(param: "hello", param1: "world")
printParameter("hello", "world")
printParameter("hello", param1: "world")
printParameter(param: "hello", "world")


//: ## Overriding
class Dog {
  func bark() { print("멍멍") }
}
class Poodle: Dog {
  override func bark() { print("왈왈") }
}
class Husky: Dog {
  override func bark() { print("으르르") }
}
class Bulldog: Dog {
  override func bark() {
    super.bark()
    print("bowwow")
  }
}


print("\n---------- [ Overriding ] ----------\n")

// Dog 타입의 객체에 bark 메서드를 실행하라는 메시지 전달
// override 된 경우 해당 메서드를 찾아서 실행

var dog: Dog = Dog()
dog.bark()

dog = Poodle()
dog.bark()

dog = Husky()
dog.bark()

dog = Bulldog()
dog.bark()

//: [Next](@next)
