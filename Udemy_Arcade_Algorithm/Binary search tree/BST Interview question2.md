```swift
/*
 TreeHeight
 https://app.codility.com/programmers/trainings/4/tree_height/
 
 Height is the number of steps to the lowest leaf.
 Length of the longest path.
 Tree with one node has height of zero.
   
                    20
                  /    \
                8        22
              /   \
            4       12
                  /    \
                10      14
 */
```


## 풀이 (안 풀었음)

```swift
class Node {
    var data: Int = 0
    var left: Node?
    var right: Node?
    
    init(_ key: Int) {
        self.data = key
    }
    
    func height() -> Int {
        if isLeaf {
            return 0
        } else {
            return 1 + max(left?.height() ?? 0, right?.height() ?? 0)
        }
    }
    
    var isLeaf: Bool {
        return left == nil && right == nil
    }
}

let root = Node(20)
root.left = Node(8)
root.right = Node(22)
root.left?.left = Node(4)
root.left?.right = Node(12)
root.left?.right?.left = Node(10)
root.left?.right?.right = Node(14)

root.height()

class Tree {
    var x: Int = 0
    var l: Tree?
    var r: Tree?
    
    init(_ key: Int) {
        self.x = key
    }
}

func solution(_ T: Tree?) -> Int {
    return height(T!)
}

func isLeaf(_ tree: Tree?) -> Bool {
    return tree?.l == nil && tree?.r == nil
}

func height(_ tree: Tree?) -> Int {
    if isLeaf(tree) {
        return 0
    } else {
        return 1 + max(height(tree?.l ?? nil), height(tree?.r ?? nil))
    }
}
```

