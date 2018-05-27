//: [Previous](@previous)
import Foundation

/*:
 ---
 ## Array
 - Ordered Collection
 - Zero-based Integer Index
 ---
 */

/*:
 ### Mutable, Immutable
 */

var variableArray = [1, 2]
variableArray = []

let constantArray = [1, 2]
//constantArray = []


/*:
 ### Array Type
 */

var arrayFromLiteral = [1, 2, 3]
arrayFromLiteral = []

//let emptyArray = []

//let emptyArray: [String] = []

/*:
 ### Initialize
 */

let strArray1: Array<String> = ["apple", "orange", "melon"]

let strArray2: [String] = ["apple", "orange", "melon"]

let strArray3 = ["apple", "orange", "melon"]

let strArray4 = Array<String>(repeating: "iOS", count: 5)

//let strArray5 = ["apple", 3.14, 1]

/*:
 ### Number of Elements
 */
let fruits = ["Apple", "Orange", "Banana"]
let countOfFruits = fruits.count

if !fruits.isEmpty {
  print("\(countOfFruits) element(s)")
} else {
  print("empty array")
}


/*:
 ### Retrieve an Element
 - [Int]
 - [Array.Index]
 - [a...b]
 - [a..<b]
 */
//              0        1         2
// fruits = ["Apple", "Orange", "Banana"]

//fruits[0]
//fruits[2]
//fruits[123]

//fruits.startIndex
//fruits.endIndex


fruits[fruits.startIndex]
fruits[fruits.endIndex - 1]


fruits.startIndex == 0    //
fruits.endIndex - 1 == 2  //

// "11".startIndex == 0

/*:
 ### Searching
 */

let alphabet = ["A", "B", "C", "D", "E"]

if alphabet.contains("A") {
  print("contains A")
}

if alphabet.contains(where: { str -> Bool in
  // code...
  return str == "A"
}) {
  print("contains A")
}

if let index = alphabet.index(of: "D") {
  print("index of D: \(index)")
}

//let idx1 = alphabet.index(of: "D")
//print(idx1)
//let idx2 = alphabet.index(of: "Q")
//print(idx2)
//alphabet[idx]

/*:
 ### Add a new Element
 */

//var alphabetArray: Array<String> = []
//var alphabetArray: [String] = []
//var alphabetArray = [String]()
var alphabetArray = ["A"]

alphabetArray.append("B")
//alphabetArray.append(1)

alphabetArray += ["C"]

var alphabetArray2 = ["Q", "W", "E"]
alphabetArray + alphabetArray2

alphabetArray.insert("S", at: 0)
alphabetArray.insert("F", at: 3)


/*:
 ### Change an Existing Element
 */

alphabetArray = ["A", "B", "C"]
alphabetArray[0]

alphabetArray[0] = "Z"
alphabetArray

alphabetArray = ["A", "B", "C"]
alphabetArray[alphabetArray.startIndex ..< alphabetArray.endIndex.advanced(by: -1)] = ["X", "Y"]

alphabetArray



1...5
1..<5
1...

alphabetArray = ["A", "B", "C", "D", "E", "F"]
alphabetArray[2...] = ["Q", "W", "E", "R"]
alphabetArray

//alphabetArray[2...] = ["Q", "W"]
//alphabetArray



/*:
 ### Remove an Element
 */

alphabetArray = ["A", "B", "C", "D", "E"]
let removed = alphabetArray.remove(at: 0)

removed
alphabetArray

alphabetArray.removeAll()
alphabetArray.removeAll(keepingCapacity: true)


// index 찾아 지우기

alphabetArray = ["A", "B", "C", "D", "E"]

let indexC = alphabetArray.index(of: "C")
alphabetArray.remove(at: indexC!)
alphabetArray


/*:
 ### Sorting
 */

alphabetArray = ["A", "B", "C", "D", "E"]

for i in 0 ..< (alphabetArray.count - 1) {
  let j = Int(arc4random_uniform(UInt32(alphabetArray.count)))
  alphabetArray.swapAt(i, j)
}
alphabetArray


// sorted vs sort

//public func sorted() -> [Element]
//public mutating func sort()

var sortedArray = alphabetArray.sorted()
sortedArray
alphabetArray

alphabetArray.sort()
alphabetArray


// sort by closure syntax

sortedArray = alphabetArray.sorted { $0 > $1 }
alphabetArray.sorted(by: >= )
sortedArray


alphabetArray.sort { $0 > $1 }
alphabetArray


/*:
 ### Enumerating an Array
 */
let array = ["Apple", "Orange", "Melon"]

for value in array {
  if let index = array.index(of: value) {
    print("\(index) - \(value)")
  }
}

print("\n---------- [ reversed ] ----------\n")

for value in array.reversed() {
  if let index = array.index(of: value) {
    print("\(index) - \(value)")
  }
}

print("\n---------- [ enumerated ] ----------\n")

for tuple in array.enumerated() {
  print("#\(tuple.0) - \(tuple.1)")
//  print("#\(tuple.offset) - \(tuple.element)")
}

print("\n---------- [ enumerated ] ----------\n")

for (index, word) in array.enumerated() {
  print("#\(index) - \(word)")
}


//: [Next](@next)
