- How to determine runtime
- How to reduce
- Answer confidently

### 제일 큰걸로 결정됨
O(1) + O(n) + O(n^2) -> O(n^2)

### if conditional 이 있다면?
제일 많이 걸리는 걸로 선택하면 됨

### 두 가지가 있다면?

```swift
func addDominant(_ n: Int, _ m: Int) {
	for _ in 0..<n {  // O(n)
		// simple statements
	}
	for _ in 0..<m {  // O(m)
		// simple statements
	}
}
```

O(n) + O(m) -> O(n+m)

### 두 가지를 곱해야한다면

```swift
func nested(_ n: Int, _ m: Int) {
	for _ in 0..<n { O(n)
		// simple statements
		for _ in 0..<m { O(m)
			// simple statements
		}
	}
}
```

O(n) * O(m) -> O(n * m)


