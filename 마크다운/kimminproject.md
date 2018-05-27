- **문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수**

```
func moonza2(input: String, input2: String) -> Bool{
    var bool: Bool = true
    if input == input2{
        print(bool)
    }else{
        bool = false
        print(bool)
    }
    return bool
}
moonza2(input:"김", input2:"민")
```