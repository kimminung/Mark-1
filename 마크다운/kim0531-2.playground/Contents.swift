//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"









let immultableArray = Array(1...40)

/*  //맵 사용.. 못하면 for라도
1. 배열의 각 요소 * index 값을 반환하는 함수
2. 배열 요소 중 홀수는 제외하고 짝수만 반환하는 함수
3. 배열의 모든 값을 더하여 반환하는 구현
 
4. immutableArray에 대해서 1~3번 함수를 차례대로 적용한 최종 값을 반환
*/

let array: [[Int?]] = [[1,2,3], [nil, 5], [6, nil], [nil, nil]]

//Q. map 과 flatMap, compactMap 을 이용하여 다음 결과를 출력해보세요.

//print(array.flatMap{ $0 })
let m1 = array.map({ $0 })
print(m1)
let m2 = array.map({$0.map({ $0 }) })
print(m2)
let m3 = array.map({$0.flatMap({ $0 }) })
print(m3)
let f1 = array.flatMap({ $0 })
print(f1)
let f2 = array.flatMap({ $0.map({ $0 }) })
print(f2)
let f3 = array.flatMap({ $0.flatMap({ $0 }) })
print(f3)
//  $0  -> [1,2,3] [int]               [nil, 5],   [6, nil], [nil, nil]
//  $0  -> Int? ([1!, 2!, 3!]       nil, [5],    [6], nil,    nil, nil )를 joined 시켜줌
//  $0  ->  [1,2,3,5,6]
/*1.*/ [[Optional(1), Optional(2), Optional(3)], [nil, Optional(5)], [Optional(6), nil], [nil,nil]]

/*2.*/ [[1,2,3], [5], [6], [7]]
print(array.flatMap{ $0 }.compactMap{$0})
/*3.*/ [Optional(1), Optional(2), Optional(3), nil, Optional(5), Optional(6), nil, nil, nil]
/*4.*/ [1,2,3,5,6]
