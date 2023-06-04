# 먼저 스택
```swift
class Stack<T> {
	private var array: [T] = []
	
	func push(_ item: T) {
		array.append(item)
	}
	
	func pop() -> T? {
		array.popLast()
	}
	
	func peek() -> T? {
		array.last
	}
	
	func isEmpty: Bool {
		array.isEmpty
	}
	
	var count: Int {
		array.count
	}
}

struct StackStruct<T> {
	fileprivate var array = [T]()
	
	mutating func push(_ item: T) {
		array.append(item)
	}
	
	mutating func pop() -> T? {
		array.popLast()
	}
	
	var peek: T? {
		array.last
	}
	
	var isEmpty: Bool {
		array.isEmpty
	}
	
	var count: Int {
		array.count
	}
}
```

보면 swift 기본 문법들로 스택을 금방 만들어 줄 수 있다는 거!!
근데 지금처럼 Class로 만들어줄 수도 있고, Struct로 만들어줄 수도 있는데 뭐가 다를까?


---

# 다음은 큐!

```swift
class Queue<T> {
	private var array: [T] = []
	
	func enqueue(_ item: T) {
		array.append(item)
	}
	
	func dequeue() -> T? {
		if isEmpty {
			return nil
		} else {
			return array.removeFirst()
		}
	}
	
	var isEmpty: Bool {
		return array.isEmpty
	}
	
	var count: Int {
		return array.count
	}
	
	func peek() -> T? {
		return array.first
	}
}

struct QueueStruct<T> {
	private var array: [T] = []
	
	mutating func enqueue(_ item: T) {
		array.append(item)
	}
	
	mutating func dequeue() -> T? {
		if isEmpty {
			return nil
		} else {
			return array.removeFirst()
		}
	}
	
	var isEmpty: Bool {
		return array.isEmpty
	}
	
	var count: Int {
		return array.count
	}
	
	func peek() -> T? {
		return array.first
	}
}

```

큐도 마찬가지로 클래스랑 스트럭트로 만들어줄수 있다