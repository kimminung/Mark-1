//: [Previous](@previous)
//: # zip
/***************************************************
 func zip<Sequence1, Sequence2>(
   _ sequence1: Sequence1,
   _ sequence2: Sequence2
 ) -> Zip2Sequence<Sequence1, Sequence2> where Sequence1 : Sequence, Sequence2 : Sequence
 
 - 두 개의 시퀀스를 통해 새로운 한 쌍의 시퀀스를 생성
 ***************************************************/

print("- example1 -")
let words = ["일", "이", "삼", "사"]    //튜플
let numbers = 1...4                  //튜플

for (word, number) in zip(words, numbers) {
  print("\(word): \(number)")
}


//혼자 응용 중..
//let grade = ["A+", "A", "F"]
//let i
//
//for i in stride(from: 0, to: 10, by: 2) {
//    print(i, terminator: " ")
//}
//print()


//
print("\n- example2 -")
let naturalNumbers = 1...Int.max    //  1 ... 2^63 2의 63
let zipped = Array(zip(words, naturalNumbers))
print(zipped)


print("\n- example3 -")
let names = ["James", "Edward", "John", "Jessie", "Julia"]
let scores = [100, nil, 90, nil, 70, nil]
//let scores : [Int?] = [100, nil, 90, nil, 70, nil]
for (name, score) in zip(names, scores){
//zip(names, scores).forEach { print($0, $1) }
    print(name, " : ", score)
//zip(names, scores.flatMap { $0 }).forEach { print($0, $1) }
}


print("\n- example4 -")
let filenames = ["image", "text", "video"]
let extensions = ["png", "txt", "mpeg", "pdf", "jpeg", "html"]
zip(filenames, extensions).forEach { name, extensions
    in
    //print(name + " . " + extensions)
}
//zip(filenames, extensions).forEach { print($0 + "." + $1) }

let some = 1
print(some)
func something() {
    let some = 2
    print(some)
}
print(some)
something()
//: [Next](@next)
