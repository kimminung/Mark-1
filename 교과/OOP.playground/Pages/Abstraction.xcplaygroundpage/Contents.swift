//: [Previous](@previous)
//: - - -
//: # Abstraction
//: - - -

protocol Human {
  var name: String { get }
  var age: Int { get }
  var gender: String { get }
  var height: Double { get }
  
  func sleep()
  func eat()
  func walk()
}

protocol Owner {
  var name: String { get }
  
  func promote()
  func hire()
  func fire()
}

protocol Chef {
  var position: String { get }

  func cook()
  func decorate()
  func buyFoodIngredients()
}

protocol Customer {
  var money: Int { get }
  
  func order()
  func eat()
  func rateRestaurant()
}
//: [Next](@next)
