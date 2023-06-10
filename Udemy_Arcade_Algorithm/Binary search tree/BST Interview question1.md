```swift
/*
 CheckBST
 https://www.hackerrank.com/challenges/ctci-is-binary-search-tree/problem
 
 Given the root node of a binary tree, determine if it is a binary search tree.
 
 The Node class is defined as follows:
    class Node {
        int data;
        Node left;
        Node right;
     }
*/
```


```swift
class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

func checkBST(root: Node?) -> Bool {
    return false
}
```


___

## 풀이 ( 내가 못 풀었음)


```swift
class Node {
	var key: Int
	var left: Node?
	var right: Node?
	
	init(_ data: Int) {
		self.key = data
	}
}

func checkBST(root: Node?) -> Bool {
	return isBST(root, nil, nil)
}

private func isBST(_ node: Node?, _ min: Int?, _ max: Int?) -> Bool {
	guard let node = node else {
		return true
	}
	
	if let min = min, node.key <= min {
		return false
	}
	
	if let max = max, node.key >= max {
		return false
	}
	
	return isBST(node.left, min, node.key) && isBST(node.right, node.key, max)
}
```