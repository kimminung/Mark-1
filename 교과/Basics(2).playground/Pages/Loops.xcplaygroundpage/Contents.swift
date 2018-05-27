//: [Previous](@previous)
/*:
 # Loops
 - For-In Loops
 - While Loops
   - while
   - repeat-while
 */
/*:
 ---
 ## For-In Loops
 ---
 */
print("\n---------- [ for ] ----------\n")
/***************************************************
 for <#item#> in <#items#> {
 <#code#>
 }
 ***************************************************/

//for (int i = 0; i <= 5; i++) {
//   C 스타일의 for 문
//}

for index in 1...4 {
  print("\(index) times 5 is \(index * 5)")
}

// Wildcard Pattern

for _ in 0...3 {
  print("hello")
}


for chr in "Hello" {
  print(chr, terminator: " ")
}
print()

let list = ["Swift", "Programming", "Language"]
for str in list {
  print(str)
}


/*:
 ---
 ### Question
 - for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현
 - for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현
 ---
 */

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
  answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


for num in (1...10).reversed() {
  print(num, terminator: " ")
}
print()


/*:
 ---
 ## While Loops
 - 조건이 거짓이 될 때까지 일련의 명령문 수행
 - 첫 번째 반복이 시작되기 전에 반복 횟수를 알지 못할 때 많이 사용
 - while  /  repeat-while
 ---
 */
print("\n---------- [ while ] ----------\n")
/***************************************************
 while <#condition#> {
 <#code#>
 }

 - 루프를 통과하는 각 패스의 시작 부분에서 조건을 평가
 ***************************************************/

var num = 0
var sum = 0

while num <= 100 {
  sum += num
  num += 1
}

sum


/***************************************************
 repeat {
 <#code#>
 } while <#condition#>
 
 - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while 문으로 많이 사용
 ***************************************************/

num = 0
sum = 0

repeat {
  sum += num
  num += 1
} while num <= 100

sum

/*:
 ---
 ### Question
 for , while , repeat - while 등을 활용하여 아래 문제들을 구현해보세요.
 1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
 2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
 3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
 4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
 5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
 6. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
 7. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
 8. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
 ---
 */

//: [Next](@next)
