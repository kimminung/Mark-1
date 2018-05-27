//: [Previous](@previous)
/*:
 # Basic Operators
 */
/*:
 ---
 ## Terminology
 ---
 */
let a = 123
let b = 456
let c: Int? = 789

// Unary Operator (단항 연산자)
-a

// Prefix (전위 표기법)
-a

// Postfix (후위 표기법)
c!


// Binary Operator (이항 연산자)
a + b

// Infix (중위 표기법)
a + b


// Ternary Operator (삼항 연산자)
// Swift 에서 삼항 연산자는 단 하나
a > 0 ? "positive" : "negative"

//if a > 0 {
//  "positive"
//} else {
//  "negative"
//}


/*:
 ---
 ## Assignment Operators
 ---
 */

// Basic assignment operator
var value = 0

// Addition assignment operator
value = value + 10

// Subraction assignment operator
value = value - 5

// Multiplication assignment operator
value = value * 2

// Division assignment operator
value = value / 2

// Modulo assignment operator
value = value % 2

// Compound Assignment Operators
value += 10
value -= 5
value *= 2
value /= 2
value %= 2

// not support : value++ , value--

//value++
//value += 1
//value = value + 1

//var (x, y) = (1, 2)
//if x = y {
//  // This is not valid, because x = y does not return a value.
//}

/*:
 ---
 ## Arithmetic Operators
 ---
 */
// Unary plus opertor
+a

// Addition Operator
a + b

"Hello, " + "world"

// Unary minus Operator
-a

// Subtraction Operator
a - b

// Multiplication Operator
a * b

// Division Operator
b / a

// Modulo operator
b % a


// 실수에서의 나눗셈
let e = 123.4
let f = 5.678

// 나누기
e / f

// 나머지1
e.truncatingRemainder(dividingBy: f)   //

// 나머지2
e.remainder(dividingBy: f)  //
/*:
 ---
 ## Question
 - 단순 나눗셈과 나머지의 차이
 - 나머지 2개의 차이점?
 ---
 */
let quotient = (e / f).rounded()
let remainder = e.remainder(dividingBy: f)
let sum = f * quotient + remainder




/*:
 ---
 ## Precedence
 ---
 */

1 + 2 * 3
1 + (2 * 3)
(1 + 2) * 3

1 + 2 * 3 + 3
1 + (2 * 3) + 3
1 + 2 * (3 + 3)

1 * 2 - 3
(1 * 2) - 3
1 * (2 - 3)

/*:
 ---
 ## Overflow Operators
 ---
 */

// Overflow addition
//var add: Int8 = Int8.max + 1
var add: Int8 = Int8.max &+ 1

// Overflow subtraction
//var subtract: Int8 = Int8.min - 1
var subtract: Int8 = Int8.min &- 1

// Overflow multiplication
//var multiplication: Int8 = Int8.max * 2
var multiplication: Int8 = Int8.max &* 2


/*:
 ---
 ## Comparison Operators
 ---
 */
// Equal to operator
a == b

// Not equal to operator
a != b

// Greater than operator
a > b

// Greater than or equal to operator
a >= b

// Less than operator
a < b

// Less than or equal to operator
a <= b


/*:
 ## Question
 - 숫자가 아닌 문자열에 대한 비교는?
 */

/*:
 ---
 ## Logical Operators
 ---
 */

// Logical AND Operator
true && true
true && false
false && true
false && false

// Logical OR Operator
true || true
true || false
false || true
false || false

// Logical Negation Operator
!true
!false


// Combining Logical Operators
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

var x = 0
func addOne() -> Bool {
  x += 1
  print("111")
  return true
}


if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
  print("Open the door")
} else {
  print("Can't open the door")
}

// Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
  // ...
} else {
  // ...
}


/*:
 ## Question
 - 논리 연산자는 순서에 주의 필요. 순서를 신경 써야 하는 이유는?
 */

/*:
 ---
 ## Ternary Conditional Operator
 ---
 */

a > 0 ? "positive" : "zero or negative"

if a > 0 {
  "positive"
} else {
  "zero or negative"
}

/*:
 ---
 ## Range Operators
 ---
 */
// Closed Range Operator
0...100

for index in 1...5 {
  print("\(index) times 5 is \(index * 5)")
}


// Half-Open Range Operator
0..<100

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {   // 0,1,2,3
  print("Person \(i + 1) is called \(names[i])")
}

// One-Sided Ranges
1...
...100
..<100


//               0       1        2       3
//let names = ["Anna", "Alex", "Brian", "Jack"]
names[2...]
names[...2]
names[..<2]


/*:
 ## Question
 - 순서를 반대로 적용하려면?
 */


//: [Next](@next)
