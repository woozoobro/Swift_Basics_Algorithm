
Fast at  adding elements to the front
and is able to dynamically size.

기차 같은 거라고 생각합시다

Head - Node - Tail로 이루어진 Linked list

```swift
// A linked list is simply a node with a pointer to next
class Node {
	var data: Int
	var next: Node?
	
	init(_ data: Int, _ next: Node? = nil) {
		self.data = data
		self.next = next
	}
}

let node3 = Node(3)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

// We can print them out by walking the list
func printLinkedListSimple(_ head: Node?) {
	if head == nil { return }
	var node = head
	print(node!.data)
	while node?.next != nil {
		print(node!.next!.data)
		node = node?.next
	}
}
printLinkedListSimple(node1) // Prints 1 2 3 
```

```swift
class LinkList {
    private var head: Node?
        
    func addFront(_ data: Int) {
    }

    func getFirst() -> Int? {
        return 0
    }

    func addBack(_ data: Int) {
    }

    func getLast() -> Int? {
        return nil
    }

    func insert(position: Int, data: Int) {
    }
    
    func deleteFirst() {
    }

    func deleteLast() {
    }
    
    func delete(at position: Int) {
    }
    
    var isEmpty: Bool {
        return false
    }
    
    func clear() {
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
}

let linkedList = LinkList()
linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)
linkedList.printLinkedList()
```

LinkedList는 지금처럼 class가 function들 다 처리되게끔 만드는 게 일반적임  

- 제일 앞에 element를 추가하는 메소드를 만들어볼까요
```swift
// In the LinkList class
func addFront(_ data: Int) {
	let newNode = Node(data)
	newNode.next = head
	head = newNode
}
```
이렇게 하면 좋은 점!! O(1) 밖에 안걸림

- 제일 첨을 가지고 오고 싶다면?
```swift
func getFirst() -> Int? {
	if head == nil {
		return nil
	}
	return head!.data
}
```

- 마지막에 추가하는 건?
```swift
func addBack(_ data: Int) {
	let newNode = Node(data)
	
	if head == nil {
		head = newNode
		return
	}
	var node = head!
	while(node.next != nil) {
		node = node.next!
	}
	node.next = newNode
}
```
node의 next를 계속 타고 들어가서 끝에 도달하면 새로운 노드를 포인팅하게 만들어주는거!  

- 마지막을 가져오는건?
```swift
func getLast() -> Int? {
	if head == nil {
		return nil
	}
	var node = head!
	while(node.next != nil) {
		node = node.next
	}
	return node.data
}
```

- 특정한 위치에 넣어주는 건?
```swift
func insert(position: Int, data: Int) {
	if position == 0 {
		addFront(data)
	}
	let newNode = Node(data)
	var currentNode = head
	for _ in 0..<position - 1{
		currentNode = currentNode?.next!		
	}
	newNode.next = currentNode?.next
	currentNode?.next = newNode
}
```

- 삭제하는 건?
```swift
func deleteFirst() {
	head = head?.next
}
```

```swift
func deleteLast() {
	var nextNode = head
	var previousNode: Node?
	while(nextNode?.next != nil) {
		previousNode = nextNode
		nextNode = nextNode?.next
	}
	previousNode?.next = nil
}
```

