이전에 풀었던 rotate array 하는 거 기억나나용

그거 가지고 한번 이야기를 해봅시다

스택이랑 큐를 이용해서 어떻게 풀 수 있을까요?

```swift
func solutionQueueRight(A: [Int], K: Int) -> [Int] {
	guard !A.isEmpty else { return [] }
	guard K > 0 else { return A }
	
	var result = A
	
	// treat like a queue enqueuing and dequeuing off the end
	
	for _ in 1...K {
		let last = result.last!
		result.insert(last, at: 0)
		result.remove(at: A.count)		
	}
	
	return result
}
```
오!! 내가 푼 방법이랑 비슷하네



### 그럼 문제!

```swift
func solutionQueueLeft(A: [Int], K: Int) -> [Int] {
	guard !A.isEmpty else { return [] }
	guard K > 0 else { return A }
	
	var result = A
	
	// treat like a queue enqueuing and dequeuing off the end
	for _ in 1...K {
		// Do your work here...
		
	}
	return result
}
```

#### 나의 풀이

```swift
func solutionQueueLeft(A: [Int], K: Int) -> [Int] {
	guard !A.isEmpty else { return [] }
	guard K > 0 else { return A }
	
	var result = A
	
	// treat like a queue enqueuing and dequeuing off the end
	for _ in 1...K {
		// Do your work here...
		var first = result[0]
		result.append(first)
		result.removeFirst()
	}
	return result
}
```
