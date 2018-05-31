//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//타입추론으로 String
var name = "Minung"
//name = 100    //타입이 달라서 오류

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2000

year = age

let month: Int = 7
let percentage: MyDouble = 99.9


//튜플
//String,Int,Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("yagom", 100, 182.5)
//인덱스를 통해 값 얻기
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

//인덱스를 통한 값 할당
person.1 = 99
person.2 = 178.4

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

var person2: (name:String, age:Int) = ("kim", 10)
print("이름: \(person2.name), 나이: \(person2.age)")


//튜플 별칭
typealias PersonTuple = (name: String, age: Int, height: Double)

let kim: PersonTuple = ("kim", 100, 192.3)
let eric: PersonTuple = ("eric", 200, 102.3)

print("이름: \(kim.name), 나이: \(kim.age)")
