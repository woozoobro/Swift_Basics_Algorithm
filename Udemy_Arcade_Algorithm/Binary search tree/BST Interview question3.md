```swift
/*
 Lowest common ancestor (LCA) in BST.
 https://www.geeksforgeeks.org/lowest-common-ancestor-in-a-binary-search-tree/
 
 O(h) - height of the tree
 
 1. If the value of the current node is less than both n1 and n2, then LCA lies in the right.
 2. If the value of the current node is greater than both n1 and n2, then LCA lies in the left.
 3. If both the above cases are false then return the current node as LCA.
 
                    20
                  /    \
                8        22
              /   \
            4       12
                  /    \
                10      14
 */
```

풀어보시오
```swift
class Node {
    var data: Int = 0
    var left: Node?
    var right: Node?
    
    init(_ key: Int) {
        self.data = key
    }
}

class BinaryTree {
    var root: Node?
    
    func lca(_ node: Node?, _ n1: Int, _ n2: Int) -> Node? {
        // Magic happens here...
        return nil
    }
}

let tree = BinaryTree()
// Step 1: Build the BST

// Step 2: Make it pass these test cases
var n1 = 10, n2 = 14
var t = tree.lca(tree.root, n1, n2)
print("LCA of \(n1) and \(n2) is \(String(describing: t?.data))") // 12

n1 = 14; n2 = 8
t = tree.lca(tree.root, n1, n2)
print("LCA of \(n1) and \(n2) is \(String(describing: t?.data))") // 8

n1 = 10; n2 = 22
t = tree.lca(tree.root, n1, n2)
print("LCA of \(n1) and \(n2) is \(String(describing: t?.data))") // 20

```

___

## 정답 풀이

```swift
class BinaryTree {
	var root: Node?
	
	func lca(_ node: Node?, _ n1: Int, _n2: Int) -> Node? {
		if node == nil { return nil }
		
		// If both n1 and n2 smaller than root, then LCA lies in left
		if node!.data > n1 && node!.data > n2 {
			return lca(node?.left, n1, n2)
		}
		
		// If both n1 and n2 are larger than root, then LCA lies in right
		if node!.data < n1 && node!.data < n2 {
			return lca(node?.right, n1, n2)
		}
		
		// Else we are at the node which is the LCA
		return node
	}
}
```

오오 생각보다 어렵지는 않네

