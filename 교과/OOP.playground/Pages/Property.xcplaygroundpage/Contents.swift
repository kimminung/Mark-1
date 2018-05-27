//: [Previous](@previous)

/*:
 ---
 # Property
 ![Property](property.png)

  ---
 */
/*:
 ---
 ## Stored Property
 Enumeration ❌   Structure ⭕️   Class ⭕️
 ---
 */
import Foundation

class Property1 {
  var width = 0.0
  var height = 0.0
}

//let so = Property1()
//so.width = 123
//so.height = 456


/*:
 ## Lazy Stored Property
 
 Enumeration ❌   Structure ⭕️   Class ⭕️
 */
print("\n---------- [ Lazy Property ] ----------\n")

class Property2 {
  var width = 0.0
  var height = 0.0
  
  lazy var formatter = NumberFormatter()
}

let lazy = Property2()



/*:
 ## Computed Property
 
 
 ![ComputedProperty](computed.png)
 Enumeration ⭕️   Structure ⭕️   Class ⭕️
 */
print("\n---------- [ Computed Property ] ----------\n")

class Property3 {
  var width = 0.0
  var height = 0.0
  
  var area: Double {
    return width * height
  }
}

var computed = Property3()
computed.width = 123
computed.height = 456
computed.area


/*:
 ## Property Observer
 
 ![property-observer](property-observer.png)
 
 Enumeration ❌   Structure ⭕️   Class ⭕️
 */
print("\n---------- [ Property Observer ] ----------\n")

class Property4 {
  var width = 0.0 {
    willSet {
      print(width, "->", newValue)
    }
    didSet {
      print(oldValue, "->", width)
    }
  }
  
  var height = 0.0
}

var obs = Property4()
obs.width = 123
obs.width = 456
obs.height = 456


/*:
 ## Type Property
 
 Shared
 
 Lazily Initialized
 
 ![type-prop](type-prop.png)
 
 Enumeration ⭕️   Structure ⭕️   Class ⭕️
 */

print("\n---------- [ Type Property ] ----------\n")

class Property5 {
  static let unit: String = "cm"
  var width = 0.0
  var height = 0.0
}

print(Property5.unit)




//: [Next](@next)
