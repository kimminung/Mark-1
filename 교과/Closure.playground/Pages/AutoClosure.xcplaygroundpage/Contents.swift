//: [Previous](@previous)
//: # AutoClosure
//: * 파라미터가 없는 표현식을 클로저로 변환하는 키워드
//: * 파라미터가 없는 클로저에 사용 e.g. ()->(), ()->Int
//: ## 일반적인 형태
var value1 = 10
func normalClosure(_ arg1: String, _ arg2: () -> ()) {
  print(arg1)
  arg2()
}

func myFunction() {}

normalClosure("arg1") {
  print("closure")
}
normalClosure("arg1", {
  value1 += 10
})
normalClosure("arg1", myFunction)
print("\n----------------------------------\n")

//: ## AutoClosure Example
var value2 = 10
func autoclosure(_ arg1: String, _ arg2: @autoclosure () -> ()) {
  print(arg1)
  arg2()
}

// closure 파라미터에 대입할 내용을 일반 함수 파라미터처럼 입력
autoclosure("arg1", print("Autoclosure"))

autoclosure("arg1", value2 += 10)
//: ## Autoclosure 파라미터에 일반 클로저 형태는 사용 불가
//autoclosure("arg1") {
//  print("Compile Error")
//}

//autoclosure("arg1", myFunction)   // error


//: [Next](@next)
