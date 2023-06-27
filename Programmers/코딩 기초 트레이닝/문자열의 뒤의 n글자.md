###### 문제 설명

문자열 `my_string`과 정수 `n`이 매개변수로 주어질 때, `my_string`의 뒤의 `n`글자로 이루어진 문자열을 return 하는 solution 함수를 작성해 주세요.

```swift
func solution(_ my_string:String, _ n:Int) -> String {
    return ""
}
```


## 나의 풀이

```swift
func solution(_ my_string:String, _ n:Int) -> String {
	let reversed = Array(my_string.reversed())
    var result = ""
    for i in 0..<n {
        result.append(reversed[i])
    }
    return String(result.reversed())
}
```

## 다른 사람의 풀이

```swift
func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.suffix(n))
}
```

### .suffix 메소드

![[Pasted image 20230625174510.png|600]]


뒤에서부터 카운팅해서 n개 까지만 반환하는 subsequence

