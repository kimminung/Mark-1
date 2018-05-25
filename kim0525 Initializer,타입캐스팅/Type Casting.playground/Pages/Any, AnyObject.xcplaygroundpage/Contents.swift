//: [Previous](@previous)
/*:
 ---
 # Any , AnyObject
 ---
 */


var intArr: [Int] = [1, 2, 3, 4, 5, 6]
//intArr.append("string")

var strArr: [String] = ["1", "2", "3", "4", "5"]
//strArr.append(1)




// Swift 는 Int, String 등의 타입 확정 이후 다른 타입의 값은 비허용하지만 가변 타입도 함께 제공
// Any(모든 타입), AnyObject(모든 레퍼런스 타입)
// Any > AnyObject


class SomeClass1 {}
class SomeClass2 {}

var anyArray: [Any]                     //클래스에서 힙에 저장되는 모든것
var anyObjectArray: [AnyObject]

anyArray = [0, "str", true, 9.9, SomeClass1()]
anyObjectArray = [SomeClass1(), SomeClass2(), SomeClass1(), SomeClass2()]


anyArray[0]

anyArray.append("newElement")
//anyObject.append("newElement")   //레퍼런스타입은 들어가지 않음



//var num: Int = anyArray[0]    //any타입에 있는것을 넣어주려니까 안된다
//var num1: Int = anyArray[0] as Int    //부등호가 반대여서 ㄴㄴ
//var num2: Int = anyArray[0] as? Int     //왼쪽에 옵셔널을 주거나 오른쪽에 옵셔널 지워주거나..
var num3: Int = anyArray[0] as! Int





// Int 타입의 배열을 사용할 때

type(of: intArr[0])
intArr[0]

// Any 타입의 배열을 사용할 때

type(of: anyArray[0])   // ?
type(of: anyArray[1])   // ?
anyArray[0]
anyArray[1]


print(anyArray[1])
print(type(of: anyArray[1]))
// let something: [any] = "111"

//: [Next](@next)
