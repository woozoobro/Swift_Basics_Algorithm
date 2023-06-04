
문자들이 담겨 있는 array를 하나로 합치기!

```swift
func solution(_ arr:[String]) -> String {
    return arr.joined()
}
```

### .joined()

```swift
let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let list = cast.joined(separator: ", ")
print(list)
// Prints "Vivien, Marlon, Kim, Karl"
```
메소드는 지금처럼 separator로 구분지어줄 수도 있고 그냥 써도 합쳐짐

