## Challenge
Given two strings, check if one is a permutation of the other.

```swift
func isPermutation(_ text: String, _ perm: String) -> Bool {
	return false
}

isPermutation("abc", "cba")
isPermutation("abc", "xyz")
```

___
```swift
func isPermutation(_ text: String, _ perm: String) -> Bool {
	return text.reversed().map{String($0)}.joined() == perm
}

isPermutation("abc", "cba")
isPermutation("abc", "xyz")
```

### reversed() 메소드는
array로 반환하네요

