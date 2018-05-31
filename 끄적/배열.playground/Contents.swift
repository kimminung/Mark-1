//: Playground - noun: a place where people can play

import UIKit

var str = "배열"

//대괄호로 배열 만듬
//var names: Array<String> = ["minung", "chulsoo", "tangoo", "minung"]
//같은 표현인데 축약형
var names: [String] = ["minung", "chulsoo", "tangoo", "minung"]

let names2: [String] = ["minung", "chulsoo", "tangoo", "minung"]
let names3: [String] = names2.sorted { $0 < $1} //클로져
let names4: [String] = names2.sorted { $0 > $1}
print("--\(names3)--")
print("--\(names4)--")

//let f1 = names4.flatMap({ $0 })   //string? 해주고 nil넣고 실험해야함

//빈 배열 생성
var emptyArray: [Any] = [Any]()
//var emptyArray: [Any] = Array<Any>()  //조금 더 자세히 적은것(같은 기능)

//배열 타입이 정확히 명시됐다면 []만으로도 빈 배열을 생성 가능
var emptyArray1: [Any] = []
print(emptyArray.isEmpty)
print(emptyArray1.isEmpty)
print(names)
print(names.count)
print(names[2])
names[2] = "jelly"
print(names[2])
//print(names[4])       //인덱스 범위 초과

//names[4] = "elsa"       //인덱스가 없는데 만든다고 하니까 에러
names.append("elsa")        //이제서야 추가함
names.append(contentsOf: ["john", "max"])   //네임즈에 추가해라, 컨텐츠는 존과 맥스를
names.insert("Happy", at: 2)    //네임즈에 삽입해라 해피를 2번째 칸에 -> 원래2번이던 놈은 3인덱스 오른쪽으로 밀려남
names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)   //index5에 진히랑 민수 합류

print(names[4])
print(names.index(of: "minung"))
print(names.index(of: "minung")!)   //옵셔널 제거해봄
//let names: [String] = names.sorted{ $0 > $1 } //뻘짓

print(names.index(of: "mr."))
print(names.first!)
print(names.last!)

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[1...3])
names[1...3] = ["kim", "min", "ung"]
print(names[1...3])

