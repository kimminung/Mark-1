//Three primary collection types, known as arrays, sets, and dictoinaries, for strong collections of values.
//
//Array - orderd collections of values.
//
//Set - unordered collections of unique values.
//
//Dictionary - unordered ~~


/*
***************************************
강력한 콜렉션 값을위한 세 가지 기본 콜렉션 유형 (배열, 세트 및 사전)이 있습니다.

배열 - 값 모음입니다.

세트 - 순서가없는 고유 값의 콜렉션.

사전 - 정렬되지 않은 ~~
***************************************
*/

//let alphabet = ["A", "B", "C", "D", "E"]

var alphabetArray = ["A", "B", "C", "D", "E"]
let indexC = alphabetArray.index(of: "C")
alphabetArray.remove(at: indexC!)
//let removed = alphabetArray.remove(at: 2)

//removed
alphabetArray

//멘탈 이 깨져있는 상태

//Dictionary

var dictFromLiteral = ["key 1": "value 1", "key 2" : "value 2"]
//var dictFromLiteral = [1: "value 1", 2 : "value 2"]
//var dictFromLiteral = ["1": 1, "2" : 2]
//var dictFromLiteral = [:]
dictFromLiteral = [:]   // 빈 값으로 잡아줄 수도 있음.

let words1: Dictionary<String, String> = ["A": "Apple", "B": "Banana", "C": "City"] //너무 길어서 하드코딩은 잘 안씀

//Set - 순서 상관없이 값이 같으면 같다고 처리

//elementsEqual - 순서까지 일치해야 같다고 처리


