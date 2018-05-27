//: [Previous](@previous)
/*:
 # Type Conversion
 */

let height = Int8(5)
let width = 10
type(of: width)
//let area = height * width
type(of: height)
type(of: width)
//print(area)
//* Int8과 Int 타입은 계산이 안된다

let h = UInt8(5)
type(of: h)
let x = 10 * h
type(of: x)
type(of: h)
print(x)

/*:
 ---
 ## Question
 - 7번째 라인 let area = height * width  부분은 에러가 발생하고
 - 13번째 라인 let x = 10 * h 에서는 에러가 발생하지 않는 이유는?
 ---
 */

let num = 10
let floatNum = Float(num)
type(of: floatNum)

let signedInteger = Int(floatNum)
type(of: signedInteger)

let str = String(num)
type(of: str)



// magnitude, abs

let integer = Int(-15)

let magnitude = integer.magnitude
type(of: magnitude)
let absNum = abs(integer)
type(of: absNum)

/*:
 ---
 ## Question
 - magnitude 와 abs 의 차이점은?
 - 양수를 사용할 때 Int / UInt 중 어느 것이 좋을까?
   - 사용성, 안전성, 타입 추론, 변환 등
 ---
 */

//: [Next](@next)
