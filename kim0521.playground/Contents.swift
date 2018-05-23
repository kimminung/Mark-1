class Person {        //망작
//    var name: String {get}
//    var age: Int {get}
//    var seoul: String {get}
//    var busan: String {get}
//    var currentLocation: String {get}
//
    func currentLocation() {

//    print("서울")
        
    }

    func goToBusan() {
    currentLocation() == goToBusan()
    }
}

let A = Person()
A.currentLocation()
A.goToBusan()
A.currentLocation()

// location 실행
// goToBusan() 했을 때 내부적으로 어떤 추가작업을 실행.
// location 서울에서 부산으로 변경
// currentLocation 과 goToBusan 메서드 외에는 외부로 노출되면 안됨
//요청자는 무엇을 할지만 알면 되고 어떻게 될지는 몰라도 됨
//수신자 A는 어떻게 처리할지를 결정

//

//Inheritance

class Person1 {
    var name: String = ""
    var age: Int = 1
    
    func eat() {
        print("eat")
    }
}

class Student: Person1 {
    var grade: String = ""
    
    func study() {
        print("st")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    
    func goMT() {
        print("MT")
    }
}

let std = Student()
std.age
std.eat()

// animal
/*
class Animal {
    var brain = true;
    var legs: Int = 0;
}

class Human: Animal {
    legs = 2;
}

class Pet: Animal {
    legs = 4;
    fleas = 0;
}

class Dog:Pet {
    fleas = 8;
}

class Cat: Pet {
    fleas = 4;
}
*/

//swift는 self로 자신을 호출해주고 난 뒤 super할 수 있다.
//final - 더이상 하위 클래스가 없을 때
