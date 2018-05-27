//: [Previous](@previous)



/***************************************************
 1. 다음과 같은 width, height 속성을 가진 사각형 클래스를 만들고, 가로/세로 길이를 설정할 수 있는 메서드 구현
 2. 사각형의 가로세로 길이 와 사각형의 넓이를 출력하는 메서드 각각 만들기
 3. 초기화와 동시에 원하는 데이터를 넣을 수 있도록 초기화 메서드 구현
 4. 아래 속성을 지닌 사각형 인스턴스 생성
 
 - 직사각형 1개 속성: width = 10, height = 5, color = 'red'
 - 정사각형 1개 속성: width = 7, height = 7, color = 'blue'
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

let quadrangle = Quadrangle(width: 10, height: 8)
print(quadrangle.getArea())
print(quadrangle.getDimension())
quadrangle.setDimension(width: 8, height: 8)
quadrangle.getArea()




print("\n---------- [   ] ----------\n")


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
  
  func currentVolume() -> Int {
    guard isPowerOn else {
      print("전원이 꺼져있습니다.")
      return -1
    }
    return volume
  }
  
  func setChannel(_ channel: Int) {
    guard isPowerOn else { print("전원이 꺼져있습니다."); return }
    self.channel = channel
  }
  
  func setVolume(_ volume: Int) {
    guard isPowerOn else { print("전원이 꺼져있습니다."); return }
    self.volume = volume
  }
  
  func operatePower(turnOn: Bool) {
    isPowerOn = turnOn
  }
}

let tv = TV()
tv.operatePower(turnOn: true)
tv.channel
tv.currentVolume()
tv.setChannel(99)
tv.channel




/***************************************************
 각 도형별 넓이, 둘레 부피 구하기 예제
 ***************************************************/

class Square {
  let length: Int
  
  init(length: Int) {
    self.length = length
  }
  
  func squareArea() -> Int {
    return length * length
  }
  func squareperimeter() -> Int {
    return length * length
  }
}



class Circle {
  let radius: Int
  
  init(radius: Int) {
    self.radius = radius
  }
  
  func area() -> Int {
    return radius * radius * 3
  }
  func circumference() -> Int {
    return 2 * 3 * radius
  }
}



//: [Next](@next)
