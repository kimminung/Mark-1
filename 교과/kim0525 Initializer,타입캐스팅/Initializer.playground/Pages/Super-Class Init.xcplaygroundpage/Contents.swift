//: [Previous](@previous)
/*:
 # Super-Class Init
 */

/***************************************************
 - 서브 클래스는 자기 자신 이외에 수퍼 클래스의 저장 프로퍼티까지 초기화 해야 함
 - 수퍼 클래스의 Designated Initializer 가 기본 init 함수 하나만 있을 경우 자동으로 super.init() 이 호출됨
 ***************************************************/


class Base {
    var value: String
    var someProperty: String
    
    init() {
        value = "Base"
        someProperty = "someProperty"
    }
    
    // Designated Initializer 가 하나일 때는 서브 클래스에서 수퍼클래스의 초기화 함수를 부르지 않아도 동작
    // 여러 개로 만들 경우 어떤 초기화 메서드를 선택해야 할지 알 수 없으므로 선택해주지 않으면 에러 발생
    // 이 때는, 서브 클래스의 모든 Designated Initializer 마다 수퍼 클래스의 초기화 함수를 명시적으로 선택해주어야 함.
    // Convenience 는 달라질 거 없음
    
    //  init(_ value: String) {
    //    self.value = value
    //    self.someProperty = "someProperty"
    //  }
    
    convenience init(someProperty: String) {
        self.init()
        self.someProperty = someProperty
    }
}


class Rectangle: Base {
    var width: Int = 20
    var height: Int
    var xPosition: Int
    
    override init() {
        height = 10
        xPosition = 5
    }
    
    init(height: Int, xPosition: Int) {
        self.height = height
        self.xPosition = xPosition
    }
    
    convenience init(height: Int) {
        self.init(height: height, xPosition: 10)
    }
}




class Shape {
    var name: String
    var sides : Int
    init(sides:Int, named: String) {
        self.sides = sides
        self.name = named
        printShapeDescription()
    }
    func printShapeDescription() {
        print("Shape Name :\(self.name)")
        print("Sides :\(self.sides)")
    }
}

class Triangle: Shape {
    var hypotenuse: Int
    init(hypotenuse:Int) {
        self.hypotenuse = hypotenuse
        super.init(sides: 3, named: "Triangle")
    }
    
    //    class Triangle: Shape {
    //        var hypotenuse: Int
    //        init(hypotenuse:Int) {
    //            super.init(sides: 3, named: "Triangle")     //스위프트는 자기 자신 먼저 초기화 하고 불러줘야하는데 순서가 오버라이드 때문에 꼬이면 값이 정의 안되고 시작되는 상태가 되버려서 오류가 남
    //            self.hypotenuse = hypotenuse
    //
    //        }
    
    override func printShapeDescription() {
        super.printShapeDescription()
        print("Hypotenuse :\(self.hypotenuse)")
    }
}
let triangle = Triangle(hypotenuse: 12)


//: [Next](@next)
