//
//  BasicExample.swift
//  Test
//
//  Created by giftbot on 2018. 5. 20..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import Foundation

class PersonInternal {
  let name = "name"
  func sayHello() {
    print("sayHello")
  }
}

class PersonFileprivate {
  fileprivate var name = "name"
  fileprivate var age = 0
  
  fileprivate func sayHello() {
    print("sayHello")
    
//    let personPrivate = PersonPrivate()
//    print(personPrivate.name)
  }
}

class PersonPrivate {
  private var name = "name"
  private var age = 0
  
  private func sayHello() {
    print("sayHello")
    
//    let personFileprivate = PersonFileprivate()
//    print(personFileprivate.name)
    
  }
}


extension PersonFileprivate {
  fileprivate func greeting() {
    
  }
}

extension PersonPrivate {
  private func greeting() {
  }
}

