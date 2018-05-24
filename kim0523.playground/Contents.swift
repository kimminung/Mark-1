//Question
//for 문을 이용하여 3의 10 제곱에 대한 결과값을 표현하는 코드

for result in 1...10 {
    var result: Int = 0
    result *= 3
}


//### Question
//for , while , repeat - while 등을 활용하여 아래 문제들을 구현해보세요.
//- 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
print("------------------")
func googoo(input: Int){
    var dandan = 0
    var gopsem = 1
    while dandan < 9 {
        dandan += 1
//        while dandan < 9 {
//            gopsem += dandan
//            dandan * input
//        }
    print("\(input) * \(dandan) = \(gopsem)")
    }
}
    googoo(input: 3)
//
func gugudan() {
    
    var dan: Int = 2
    var j: Int = 1
    
    while dan <= 9 {
        while j <= 9 {
            print("\(dan) X \(j) = \(dan*j)")
            j += 1
        }
        
        dan += 1
    }
}
gugudan()
func gugudan(num: Int) {
    
    let dan: Int = num
    var j = 1
    while j <= 9 {
        print("\(dan) X \(j) = \(dan*j)")
        j += 1
    }
}
gugudan(num: 3)
