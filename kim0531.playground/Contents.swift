//: Playground - noun: a place where people can play

import UIKit

struct Pet {
    enum PetType {
    }
    case dog, cat, snake, pig, bird
    var type: PetType
    var age: Int
}
//newPet : [Pet] = [ Pet() ]
let myPet = [
    Pet(type: .dog, age: 13),
    Pet(type: .dog, age: 2),
    Pet(type: .dog, age: 7),
    Pet(type: .cat, age: 9),
    Pet(type: .snake, age: 4),
    Pet(type: .pig, age: 5),
]

func sum() -> Int {
    var ageSum = 0
    for pet in myPet {
        guard pet.type == .dog else { continue }
        ageSum += pet.age
    }
    return ageSum
}

func addDog(_ dog1 :Int,_ dog2 :Int){
    let total = dog1+dog2
    print(total)
}
addDog(1,2)
