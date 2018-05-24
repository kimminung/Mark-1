//: [Previous](@previous)
/*:
 **function** - named code block
 
 **closure** - unnamed code block (lambdas) //익명 함수 (람다 함수)
 */
//: ## Basic Closure        //함수랑 동일한 형태, 그대로 넣음
print("\n---------- [ Basic ] ----------\n")
let simpleClosure = {
  print("This is SimpleClosure!!")
}
simpleClosure                   //void처리
type(of: simpleClosure)
simpleClosure()

//func simpleFuction() = (void){
//
//}

//1.
let closureParameter = { (str: String) -> Int in    //in = (str: String)과 return str.count 구분함
  return str.count
}
//2. 1이랑 같음
func closureParameterFunction(str: String) -> Int {
    return str.count
    //    print(str)
    //    return 0
}

let count = closureParameter("Swift")
//let count = closureParameter(str: " ")
print(count)


//Void

func voidFunction() {
  print("1")
}
let var1 = voidFunction
type(of: var1)  //input값 없고 output없는것 void가 초기값
var1
var1()

let var2: ()->() = {    // 클로져 사용 - 인풋이 없고 아웃이 없는 함수 클로져를 생성
  print("1")
}
var1()
var2()

/*:
 ## Inline closure
 */
print("\n---------- [ Inline ] ----------\n")

func printSwift() {
  print("Swift")
}

let arg = {
  print("Inline Closure!!")
}

func closureParamFunction(closure: () -> Void) {
  closure()     //아무 값이 없는 인풋값
}

//인라인 클로져(closire: 같이 안에 쓰는것)
closureParamFunction(closure: printSwift)   //함수의 파라미터로 넣어줌 -> 여러곳 호출 가능
closureParamFunction(closure: arg)          //인라인 클로져
closureParamFunction(closure: {             //미리 생성 않고 즉시 넣어 만듬 -> 이곳에서 밖에 못씀
  print("explicit closure parameter name")  //많이 쓰임
})

/*:
 ## Trailing Closure
 */
print("\n---------- [ Trailing ] ----------\n")

closureParamFunction() {      //위에꺼랑 같지만
  print("Trailing")
}

closureParamFunction {
  print("Trailing")
}

func closureParamFunction2(closure1: () -> Void, closure2: () -> Void) {
  closure1()
  closure2()
}

closureParamFunction2(closure1: {
  print("inline")
}, closure2: {
  print("inline")
})

closureParamFunction2(closure1: {
  print("inline")
}) {
  print("trailing")
}

/*:
 ## Syntax Optimization
 */
print("\n---------- [ Syntax Optimization ] ----------\n")


func performClosure(param: (String) -> Int) {
  print(param("Swift"))     //String에서 Int로 어떻게 전달되는지 모름
//    print(param("Swift2"))
                            //어떻게 실행될지를 모름
}

performClosure(param: { (str: String) -> Int in
  return str.count          //어떻게 값을 받을지 모름
})

performClosure(param: { (str: String) in
  return str.count          //추론함
})

performClosure(param: { str in
  return str.count          //함수에서 이미 정의 했으므로
})

performClosure(param: {
  return $0.count           //$0을 적으면 하나만 입력받을거란걸 아니까 (0) 스트링을 카운트 해줌
})

performClosure(param: {
  $0.count                  //리턴타입이 스트링과 카운트할거란걸 아니까 스트링, 인트로 잡고 컴파일러가 알아서 잡음
})

performClosure(param: ) {
  $0.count
}

performClosure() {
  $0.count
}

performClosure { $0.count }



//: [Next](@next)
