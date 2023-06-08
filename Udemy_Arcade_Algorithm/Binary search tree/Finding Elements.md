
```swift
class Node {
    var key: Int = 0
    var left: Node?
    var right: Node?
    
    init(_ key: Int) {
        self.key = key
    }
}
```

이렇게 시작하는데 Linked List랑 약간 비슷한데 left right로 나뉜 다는게 조금 다르죠?

```swift
class BST {
    var root: Node?

    func insert(key: Int) {
    }

    private func insertItem(_ node: Node?, _ key: Int) -> Node {
        return Node(key)
    }

    func find(key: Int) -> Int? {
        guard let root = root else { return nil }
        guard let node = find(root, key) else { return nil }
        
        return node.key
    }

    private func find(_ node: Node?, _ key: Int) -> Node? {
        guard let node = node else { return nil }
        
        if node.key == key {
            return node
        } else if key < node.key {
            return find(node.left, key)
        } else if key > node.key {
            return find(node.right, key)
        }
        return nil
        // Note: duplicate keys not allowed so don't need to check
    }
    
    func findMin() -> Int {
        return 0
    }

    private func findMin(_ node: Node) -> Node {
        return Node(0)
    }

    func delete(key: Int) {
    }
    
    private func delete(_  node: inout Node?, _ key: Int) -> Node? {
        return nil
    }

    func prettyPrint() {
        // Hard code print for tree depth = 3
        let rootLeftKey = root?.left == nil ? 0 : root?.left?.key
        let rootRightKey = root?.right == nil ? 0 : root?.right?.key
        
        var rootLeftLeftKey = 0
        var rootLeftRightKey = 0
        
        if root?.left != nil {
            rootLeftLeftKey = root?.left?.left == nil ? 0 : root?.left?.left?.key as! Int
            rootLeftRightKey = root?.left?.right == nil ? 0 : root?.left?.right?.key as! Int
        }
        
        var rootRightLeftKey = 0
        var rootRightRightKey = 0
        
        if root?.right != nil {
            rootRightLeftKey = root?.right?.left == nil ? 0 : root?.right?.left?.key as! Int
            rootRightRightKey = root?.right?.right == nil ? 0 : root?.right?.right?.key as! Int
        }
     
        let str = """
                       \(root!.key)
                    /    \\
                   \(rootLeftKey!)      \(rootRightKey!)
                  / \\    /  \\
                 \(rootLeftLeftKey)   \(rootLeftRightKey)  \(rootRightLeftKey)    \(rootRightRightKey)
        """
        
        print(str)
    }
}
```

이 코드가 BST

![[Pasted image 20230607225658.png]]

이게 핵심임!


# Inserting Into

Root부터 시작해서 비교 연산 한 다음에 nil인 자리를 찾아 가고 insert해주게 된다!

![[Pasted image 20230607230633.png]]

## Finding the minimum

![[Pasted image 20230607231109.png]]

왼쪽이 작은 거 오른쪽이 큰거니까
min을 이런 식으로 찾아줄 수 있습니다~!

