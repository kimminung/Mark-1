//  function    =   기능
//  method      =   클래스 내에서 함수호출을 메서드

//  class       =   abstract
//  object      =   instance

class Dog {
    /*static*/ var color: String!
    var eyeColor: String!
    var height: Double!
    var weight: Double!
    let name: String!
    
    init() {
        name = "tori"
        color = "white"
    }
/*
    init(name: String) {
        self.name = name
        color = "Brown"
    }
*/
/*
     init(name n: String) {
        name = n
        color = "Brown"
     }
*/
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func sit() {
        print("sit")
    }
    
    func layDown() {
        print("layDown")
    }
    
    func shake() {
        print("shake")
    }
}

let bobby: Dog = Dog()
//type(of: Dog())
bobby.color = "white"
bobby.sit()


let tori: Dog = Dog()
tori.color = "blue"
tori.shake()


//  struct, enum - Stack에 저장
//  class - Heap에 저장

//  * Equatable
//  == 표시   값 비교
//  === 표시  주소 비교

//  class는 heap에 데이터(값)가 저장
//  class는 stack에 힙의 값이 가르키는 주소를 저장

// ##클래스의 초기화

// lazy var
// self를 이용하여 자기 자신을 사용하고싶을때가 오는데 lazy 선언 후 사용하면 메모리를 아낄 수 있음
// 게을러서 불러야만 그때부터 사용됨 //없는 취급 받다가

// get, set
// 다른 값을 활용하고 싶을때
// set만 있으면 안돌아감.
// get만 있거나 get,set있을때는 돌아감.

class Property4 {
    var width = 0.0 {
        willSet {
            print("willSet: ", width, "->", newValue)
        }
        didSet {
            print("didSet: ", oldValue, "->", width)
        }
    }
    var height = 0.0 {
        willSet {
            print("willSet: ", height, "->", newValue)
        }
        didSet {
            print("didSet: ", oldValue, "->", height)
        }
    }
}

var obs = Property4()

obs.width = 123

obs.width = 456

obs.height = 456

// willSet, didset 이전,이후 값 활용

//  lazy
// 1. 등록 정보의 초기 값이 인스턴스의 초기화가 완료 될 때 까지 값을 알 수 없는 외부 요인에 의존 할 때 -> 만약 사용자가 마우스 클릭을 사용하고나서 그 결과값을 가지고 출력할 때
// 2. 속성의 초기 값이 복잡하거나 계산 비용이 많이 드는 설정을 필요로 할 때
// 3. 필요한 경우가 제한적일 때


/***************************************************
1. 다음과 같은 width, height 속성을 가진 사각형 클래스를 만들고,
    가로/세로 길이를 설정할 수 있는 메서드 구현
2. 사각형의 가로세로 길이와 사각형의 넓이를 출력하는 메서드 각각 만들기
3. 초기화와 동시에 원하는 데이터를 넣을 수 있도록 초기화 메서드 구현
4. 아래 속성을 지닌 사각형 인스턴스 생성
 
 - 직사각형 1개 속성: width = 10, height = 5
 - 정사각형 1개 속성: width = 7, height = 7
 ***************************************************/
class Quadrangle {
    var width = 10
    var height = 5
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func getArea() -> Int {
        return width * height
    }
    func getDimension() -> (Int, Int) {
        return (width, height)
    }
    func setDimension(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

let quadragle = Quadrangle(width: 10, height: 8)
print(quadragle.getArea())
print(quadragle.getDimension())
quadragle.setDimension(width: 8, height: 8)
quadragle.getArea()

/*  //망작
class Quadrangle {
    
    let width: Int!
    let height: Int!
//    lazy var width1: Int!
    init() {
        width = 10
        height = 5
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func area() -> Int {
        return width * height
    }
}

let length: Quadrangle = Quadrangle()

//length.width
print(length.width)
//length.height
print(length.height)
print(Quadrangle.area())
*/
//TV문제

/***************************************************
 채널 정보, Volume 값, 전원 설정여부 를 속성으로 가지는 클래스 생성
 TV 의 현재 채널 및 볼륨을 변경하고, 확인할 수 있는 메서드 구현.
 TV 전원이 꺼져있다면   채널이나 볼륨을 변경하거나 현재 값을 확인하는 동작 불가
 ***************************************************/

class TV {
    
    var isPowerOn = false
    var channel = 9
    var volume = 10
    
    func currentChannel() -> Int {
        guard isPowerOn else {
            print("전원이 꺼져있습니다.")
            return -1
        }
        return channel
    }
    
    
    
}
