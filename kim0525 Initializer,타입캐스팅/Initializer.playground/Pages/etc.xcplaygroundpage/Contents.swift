//: [Previous](@previous)
/*:
 ---
 # Initializer 의 다른 특징들
 ---
 */


/***************************************************
 초기화 이전 단계에서 인스턴스 메서드 호출 불가
 - 다른 메서드 호출 중 초기화 되지 않은 프로퍼티를 사용할 수도 있기 때문에 컴파일 에러 발생
 ***************************************************/

//init(height: Int, xPosition: Int) {
//  self.height = height
////  someMethod()          // Error 발생
//  self.xPosition = xPosition
//}
//
//func someMethod() {       //값이 없는 상태
//  print(self.height)
//}

class kim {
    var height: Int
    var xPosition: Int

    init(height: Int, xPosition: Int) {
        self.height = height
        self.xPosition = xPosition
//        someMethod()
    }
    
    func someMethod() {       //값이 없는 상태
        print(self.xPosition)
        print(self.height)
    }
}
let im = kim(height: 100, xPosition: 50)
print(im.height)
im.someMethod()

class Triangle: kim{
    var hypotenuse: Int
    init(hypotenuse:Int) {
        self.hypotenuse = hypotenuse
        super.init(height: 3, xPosition: 3)
    }

    //    class Triangle: Shape {
    //        var hypotenuse: Int
    //        init(hypotenuse:Int) {
    //            super.init(sides: 3, named: "Triangle")     //스위프트는 자기 자신 먼저 초기화 하고 불러줘야하는데 순서가 오버라이드 때문에 꼬이면 값이 정의 안되고 시작되는 상태가 되버려서 오류가 남
    //            self.hypotenuse = hypotenuse
    //
    //        }

    override func someMethod() {
        super.someMethod()
        print("Hypotenuse :\(self.hypotenuse)")
    }
}
let im2 = Triangle(hypotenuse: 2)
im2.height
im2.xPosition

print(im.height)
let triangle = Triangle(hypotenuse: 12)

extension kim{

    convenience init(height: Int) {
        self.init(height: height, xPosition: 10)
    }
}



/***************************************************
 Extension Initializer
 - Extension에서는 Convenience Initializer 는 추가할 수 있어도 Designated Initializer 는 할 수 없음
 ***************************************************/
class Rectangle {
    var height: Int
    var xPosition: Int
    
    init(height: Int, xPosition: Int) {
        self.height = height
        self.xPosition = xPosition
    }
}

extension Rectangle {
    //  // 에러 발생
    //  init(height: Int, xPosition: Int) {
    //    self.height = height
    //    self.xPosition = xPosition
    //  }
    
    // Convenience 는 가능하다.
    convenience init(height: Int) {
        self.init(height: height, xPosition: 10)
    }
}



/***************************************************
 Required Initializer
 - 상속받은 클래스에서 반드시 작성해주어야 하는 초기화 메서드가 있을 때 required 키워드 사용
 - 이 경우 서브 클래스에서는 해당 초기화 메서드를 반드시 작성해주어야 하며, override 키워드는 생략 가능
 ***************************************************/

//required init(height: Int, xPosition: Int) {
//  self.height = height
//  self.xPosition = xPosition
//}



/***************************************************
 Deinitializer
 - 할당된 객체가 해제될 때는 deinit 메소드가 호출됨.
 ***************************************************/

//deinit {
//  // 객체 메모리 해제 시 동작할 코드
//}

//class SomeClass {
//    deinit {
//        print("Deinit")
//    }
//}
//
//var someClass: SomeClass? = SomeClass()
//print(someClass)
//someClass = nil
//print(someClass)

//: [Next](@next)
