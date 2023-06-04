
> Giving a String, write a function that reverses the string using a stack.

```swift
func solution(_ text: String) -> String {
	// Do your work here...
	return ""
}

solution("abc") // cba
solution("Would you like to play a game?")
```


---
## 나의 풀이

```swift
func solution(_ text: String) -> String {
    // Do your work here...
    var char = [Character]()    
    var given = text
    
    for _ in given {
        var last = given.last!
        char.append(last)
        given.removeLast()
    }
    
    var result = char.map { "\($0)" }.joined()
    
    return result
}

solution("abc") // cba
solution("Would you like to play a game?")
```

---

## 강의 풀이

```swift
func solution(_ text: String) -> String {
	var chars = Array(text)
	
	// Create stack
	var result = [String]()
	
	// Push chars
	for c in chars {
		result.append(String(c))
	}
	
	// Pop chars
	for i in 0..<result.count {
		chars[i] = Character(result.popLast()!)
	}
	
	return ""
}

solution("abc") // cba
solution("Would you like to play a game?")
```

string.popLast() 는 마지막 원소를 제거하면서 가져오는 메소드

