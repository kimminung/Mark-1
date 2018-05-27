//maximumNumberOfLoginAttempts = 20
//변수명이 이전과 다르게 길어지고 있는 추세
//최대 로그인 횟수
//상수
let maximumNumberOfLoginAttempts = 10

//변수
var currentLoginAttempt = 0
currentLoginAttempt = 1

let `let` = 1
//Swift 에서 사용되는 키워드일 경우 backquote(`)를 이용해 사용 가능
print(`let`)

let language:String
language = "Swift 4"

/*var language:String ""
 */

let name = "Tori"
print(type(of:name))

let age : Int = 4
print(type(of: age))

let weight: Float64 = 6.4464213168946951615646487979651311351315498798789465
print(type(of: weight))
//Double 최소 소수점 이하 15자리수 이하의 정밀도
//Float 최소 소수점 이하 6자리수 이하의 정밀도

/*고정 소수점
 123132.1321213232
 122342.1321433452
 123532.1322344235
 
 부동 소수점
 소수점 자리가 자유
 */

let binaryImteger = 0b10001 //2진수
let hexadecimalInteger = 0x11 //16진수

var bigNumber = 1_000_000_000
//var bigNumber = 1_00000_0000_000


MemoryLayout<Int>.size
Int.max
Int.min

MemoryLayout<UInt>.size
UInt.max
UInt.min
print(UInt.max)


MemoryLayout<Int8>.size
Int8.max
Int8.min

//let q1: UInt8 = -1
//let q2: Int8 = Int8.max + 1
//let q2: Int8 = 127+1 //타입을 미리 알고서 진행하여 오류
//let q2 = Int8(127+1) //타입을 모르고 일단 시작했는데 인트8에서 걸려 에러

//let q3 = Int(Int32.max) +1

//Int32.max +1
//Int64.max +1

//01111111 -> 10000000

//Overflow addition operator
//Int32.max &+ 1  // -128 반대로 최소값 표시
//Int32.max &+ 1  // -2147483648

//Int32.max &- 1  // 127 반대로 최대값 표시
//Int32.max &- 1  // 2147483647

import Foundation
var floatValue: Float = 1.23
//var floatValue1: CGFloat = CGFloat(1.23)
type(of:floatValue)



var nonCharacter = "C"
type(of: nonCharacter)

var Character: Character = "C"
type(of: Character)

MemoryLayout<String>.size
MemoryLayout<Character>.size


//Character는 딱 하나의 문자만 입력 가능
//Character = "" //불가
//Character = "String" //불가


//typealias <#type name#> = <#type expression#>

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min
var maxAmplitudeFound1 = UInt16.min

type(of:maxAmplitudeFound)
type(of:maxAmplitudeFound1)

// 커멘드 + 컨트롤 + 쉬프트 + 클릭 = 퀵 헲프
// 커멘드 + 쉬프트 + 0 = 개발자 도움말

let height = Int8(5)
let width = 10
//let area = height * width // 인트8과 인트 여서 에러
//print(area)

let h = UInt8(25)
let x = 10 * h //에러가 안남. 10은 아직 인트값이 아니고 h의 25까지 계산 한 뒤 h의 인트8로 타입추론함
//type(of: x)
print(x)

//절대값 씌우기 2가지 방법


let integer = Int(-15)

let magnitude = integer.magnitude   //형태를 어사인먼트 인티저로 바꾸면서 유인트로 절댓값 씌움
let absNum = abs(integer)   //기존값을 그대로 절댓값으로
