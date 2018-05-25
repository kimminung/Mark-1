//: Playground - noun: a place where people can play
import UIKit

/*
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2.
 The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3.
 The number 20 has binary representation 10100 and contains one binary gap of length 1.
 The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
 */


import Foundation


// i.조장희
public func solution1(_ N : Int) -> Int {
    var binary: Array<Int> = []
    var N: Int = N
    var sum: Int = 0
    var count: Int = 0
    var returnValue: Int = 0
    
    
    // 2진수 배열로 만들기
    while N != 0 {
        binary.append(N % 2)
        N /= 2
    }
    binary = binary.reversed()
    print(binary)
    
    
    // 모든값이 111일경우 return 0
    for idx in binary {
        sum += idx
        if sum == binary.count {
            sum = 0
            return 0
        }
    }
    // 배열을 불러와서 기존값과 현재값을 비교하는 for문입니다.
    // 아래 for문은 10000에서 이상 동작을 합니다.
    //    for value in binary {
    //        if value == 1 {
    //            count = 0
    //            continue
    //        } else if value == 0 {
    //            count += 1
    //            if count > returnValue {
    //                returnValue = count
    //            }
    //        }
    //    }
    //    print("return 값 : \(num1)")
    //    return num1
    
    // 배열을 불러와서 기존값과 현재값을 비교하는 for문입니다.
    // 아래 for문은 10000에서 정상 동작을 합니다.
    for value in binary {
        if value == 1 {
            if returnValue < count {
                returnValue = count
            }
            count = 0
        } else {
            count += 1
        }
    }
    
    
    print("return 값 : \(returnValue)")
    return returnValue
}
print("조장희")
solution1(1041)
solution1(32)
solution1(15)
solution1(12345)

// i. 한인탁
func binaryGap (_ N: Int) -> Int {
    let str = String(N, radix:2)    //2진수로 변환
    var count1 = 0
    var zeroNum = 0
    
    print(str)
    for countNum in str {
        if countNum == "0" {
            count1 += 1
        } else {
            if  zeroNum <= count1 {
                zeroNum = count1
            }
            count1 = 0
        }
    }
    return zeroNum
}

binaryGap(1041)
binaryGap(20)
binaryGap(15)
binaryGap(12345)

// i. 이상혁
import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")
var binaryArray: [Int] = []
var binaryString: String = ""

func decimalTobinary(_ num: Int) -> String {
    var decimalNumber: Int = num
    
    // 10진수 -> 2진수 변환 (배열)
    while decimalNumber != 0 {
        binaryArray.append(decimalNumber % 2)   // 10진수를 2로 나누어 나머지를 배열에 저장
        decimalNumber = decimalNumber / 2       // 10진수를 2로 나눈 몫을 저장
    }
    
    // 역순으로 저장된 배열을 역순으로 재배치 후 저장
    for index in binaryArray.reversed() {
        binaryString += String(index)
    }
    type(of: binaryString)
    
    return binaryString // 변환된 2진수 반환
}

public func solution(decimalNumber N : Int) -> Int {
    let binaryNumber = decimalTobinary(N)   // 10진수 -> 2진수 변환 함수 실행
    var count = 0                           // 0의 갯수 카운트 변수
    var max = 0                             // 0의 최대갯수 저장 변수
    
    // gap 판별
    // 1을 만난 후 다음 1을 만날때까지 0의 갯수를 카운트하여 1을 만나면 카운트를 max에 저장
    // 1을 다시 만나지 못하면 이전에 저장한 max 가 최대값
    for index in binaryNumber {
        if index == "1" {
            if max < count {
                max = count
            }
            count = 0
        } else {
            count += 1
        }
    }
    
    return max
}

solution(decimalNumber: 1041)
solution(decimalNumber: 20)
solution(decimalNumber: 15)
solution(decimalNumber: 12345)

// i. 윤원희
public func solution2(_ N : Int) -> Int {
    
    let number = N
    let binary = String(number, radix: 2)
    
    var binarygap = 0
    var zerocount = 0
    
    for i in binary {
        if i == "0" {
            zerocount += 1
        }
        
        if i == "1" {
            if zerocount > binarygap {
                binarygap = zerocount
            }
            
            zerocount = 0
        }
    }
    return binarygap
}


solution2(1041)
solution2(20)
solution2(15)
solution2(12345)
