//
//  main.swift
//  Test
//
//  Created by giftbot on 2018. 5. 20..
//  Copyright © 2018년 giftbot. All rights reserved.
//


class PersonBasic {
  let name = "name"
}

let basic = PersonBasic()
print(basic.name)


/***************************************************
 Basic Example
 ***************************************************/
let personInternal = PersonInternal()
print(personInternal.name)

let personFileprivate = PersonFileprivate()
print(personFileprivate)

let personPrivate = PersonPrivate()
print(personPrivate)



/***************************************************
 Subclassing
 ***************************************************/
executeSubclassingFile()


/***************************************************
 Extension
 ***************************************************/
extension PersonFileprivate {
  fileprivate func sayHo() {
  }
}

extension PersonPrivate {
  private func sayHo() {
  }
}
