//
//  Subclassing.swift
//  Test
//
//  Created by giftbot on 2018. 5. 21..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import Foundation



//public class A {
//  fileprivate func someMethod() {
//    print("A method")
//  }
//}
//
//internal class B: A {
//  override internal func someMethod() {
//    print("B method")
//  }
//}


func executeSubclassingFile() {
//  let b = B()
//  b.someMethod()
}





/***************************************************
 위 코드는 아래와 같은 개념.
 수퍼클래스에 접근할 수 있는 상황에서는 서브클래스가 더 높은 접근 레벨을 가지고 있어도 무관
 ***************************************************/

public class A1 {
  fileprivate func someMethod() {}
}

internal class B1: A1 {
  override internal func someMethod() {
    super.someMethod()
  }
}


