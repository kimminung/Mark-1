//: [Previous](@previous)

import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

names.sorted()

names.sorted(by: { (str1: String, str2: String) -> Bool in
  return str1 > str2
  })

//names.sorted(by: <#T##(String, String) throws -> Bool#>)


/*:
 ---
 ### Question
 - sorted 클로져를 축약해나가는 과정을 작성
 ---
 */







// closure parameter

names.sorted(by: { (s1: String, s2: String) in
  return s1 > s2
})

names.sorted { (s1: String, s2: String) in
  return s1 > s2
}

names.sorted { s1, s2 in return s1 > s2 }

names.sorted { s1, s2 in s1 > s2 }

names.sorted { $0 > $1 }

names.sorted(by: >)




// function parameter

// names.sorted(by: <#T##(String, String) throws -> Bool#>)

func sortFunction(s1: String, s2: String) -> Bool {
  return s1 > s2
}
names.sorted(by: sortFunction(s1:s2:))



//: [Next](@next)
