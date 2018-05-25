//하샤드 수 구하기
//하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수 ex) 18의 자릿수 합은 1 + 8 = 9이고, 18은 9로 나누어 떨어지므로 하샤드 수.

func checkHarshad(num : Int){
    var sum : Int = 0
    var newNum : Int = num
    var num1 : Int = 0
    var num2 : Int = 0
    var checkNum : Int = 0
    
    guard newNum>0 else{ print("\(num) : 자연수가 아닙니다"); return }
    while checkNum==0{
        num1 = newNum / 10
        num2 = newNum % 10
        if num1==0 {
            checkNum = 1
        }
        sum += num2
        newNum = num1
    }
    if num%sum==0{
        print("\(num) : 하샤드 수 입니다.")
    }
    else{
        print("\(num) : 하샤드 수가 아닙니다.")
    }
}

checkHarshad(num: -18)
checkHarshad(num: 17)
checkHarshad(num: 12)
checkHarshad(num: 1000)

//2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기 ex) Input : 6, 9 -> Output : 18, 3

func getNum(num1 : Int, num2 : Int){
    let checkNum : Int = num1 > num2 ? num2 : num1
    var gcdNum : Int = 0
    
    guard num1>0,num2>0 else { print("입력값 : \(num1),\(num2)\n적어도 하나의 수가 자연수가 아닙니다\n"); return }
    for i in 1...checkNum{
        if(num1%i==0){
            print(i)
            if(num2%i==0){
                print(i)
                gcdNum=i
            }
        }
    }
    print("입력값 : \(num1),\(num2)\n최소공배수 : \(num1*num2/gcdNum)\n최대공약수 : \(gcdNum)\n")
}
getNum(num1: 15, num2: 12)
getNum(num1: -15, num2: 12)

//선풍기를 동작시키는 과정을 추상화, 캡슐화, 상속 개념 등을 이용해 클래스로 구현해보기

public class fan{
    private var power : Bool = false
    private var wind : Int = 1
    private var turn : Bool = false
    private var time : Int = 0
    
    
    private func powerButton(){
        if self.power==false{
            self.power=true
            print("power on")
        }
        else{
            self.power=false
            self.wind=1
            self.turn=false
            self.time=0
            print("power off")
        }
    }
    
    private func windButton(){
        guard self.power==true else { return }
        
        if self.wind==3{
            self.wind=1
        }
        else{
            self.wind += 1
        }
        print("\(self.wind)단 입니다.")
    }
    
    private func turnButton(){
        guard self.power==true else { return }
        
        if self.turn==false{
            self.turn=true
            print("회전 시작")
        }
        else{
            self.turn=false
            print("회전 정지")
        }
    }
    
    private func timeButton(){
        guard self.power==true else { return }
        if self.time==4{
            self.time=0
        }
        else{
            self.time += 1
            print("선풍기 : \(self.time)시간 뒤에 power off.")
        }
    }
    
    func button(buttonName:String){
        switch buttonName {
        case "powerButton":
            self.powerButton()
        case "windButton":
            self.windButton()
        case "turnButton":
            self.turnButton()
        case "timeButton":
            self.timeButton()
        default:
            return
        }
    }
    func showFan(){
        print("-----\npower : \(self.power)\nwind : \(self.wind)\nturn : \(self.turn)\ntime : \(self.time)\n-----")
    }
}

var newFan=fan()

newFan.button(buttonName: "windButton")
newFan.showFan()

newFan.button(buttonName: "powerButton")
newFan.showFan()

newFan.button(buttonName: "windButton")
newFan.showFan()

newFan.button(buttonName: "turnButton")
newFan.showFan()

newFan.button(buttonName: "timeButton")
newFan.showFan()

newFan.button(buttonName: "powerButton")
newFan.showFan()


