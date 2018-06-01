//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//타입 얼리아스로 별명 잡아주고
typealias StringIntDictionary = [String: Int]

//넘버포네임을 계속 갖다 쓸거다. 딕셔너리를 스트링, 인트로 된 비어있는 딕셔너리<스트링><인트타입짜리로>
var numberForName1: Dictionary<String, Int> = Dictionary<String, Int>()

//넘버포네임2를 계속 갖다 쓸거다. 스트링키값과 인트형타입인 비어있는 딕셔너리(타입추론)로 [String: Int]처럼 쓸거다
var numberForName2: [String: Int] = [String: Int]()

//넘버포네임3을 계속 갖다 쓸거다. 비어있는 별명형식{키값:타입 + 타입추론(딕셔너리)}으로 된걸 StringIntDictionary라고 쓸거다.
var numberForName3: StringIntDictionary = StringIntDictionary()

//난. 계속 불려다닐것같은 넘버포네임4다. 뭔가 빈타입인 [:]로 될것같은데 [String: Int]로 따라하면 된데. 보니까 딕셔너리네.
var numberForName4: [String: Int] = [:]

var numberForName: [String: Int] = ["minung":100, "kim":200, "jen":10]
print(numberForName.isEmpty)
print(numberForName.count)
