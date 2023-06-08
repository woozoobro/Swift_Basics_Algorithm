
* No child
* One child
* Two children


```swift
func delete(key: Int) {
	guard let _ = root else {return}
	root = delete(&root, key)
}

private func delte(_ node: inout Node?, _ key: Int) -> Node? {
	guard let nd = node else {return nil}
	
	if key < nd.key {
		nd.left = delete(&nd.left, key)
	} else if key > nd.key {
		nd.right = delete(&nd.right, key)
	} else {
		//Woohoo! Found you. This is the node we want to delete.
		
		// Case 1: No child
		if nd.left == nil && nd.right == nil {
			return nil
		}
		
		// Case 2: One child
		else if nd.left == nil {
			return nd.right
		}
		else if nd.right == nil {
			return nd.left
		}
		
		// Case 3: Two children
		else {
			// Find the minimum node on the right (could also find max on left )
			let minRight = findMin(nd.right!)
			
			// Duplicate it by copying its value here
			nd.key = minRight.key
			
			// Now go ahead and delete the node we just duplicated (same key)
			nd.right = delete(&nd.right, nd.key)
		}
	}
	return nd
}
```

Delete에서 생각해볼 건 inout 키워드로 reference를 프로퍼티로 넘기는거  

## Binary tree traversal

* Inorder (L, Root, R): 213
* Preorder(Root, L, R): 123
* Postorder(L, R, Root): 231

213 123 231 뭐 이런 것들

어떤 순서로 여행을 떠날 건지

```swift
	// In the BST
    func printInOrderTravseral() { inOrderTraversal(node: root) }
    
    func inOrderTraversal(node: Node?) {
        guard let node = node else { return }
        inOrderTraversal(node: node.left)
        print(node.key) // root
        inOrderTraversal(node: node.right)
    }
    
    func printPreOrderTravseral() { preOrderTraversal(node: root) }
    
    func preOrderTraversal(node: Node?) {
        guard let node = node else { return }
        print(node.key) // root
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }

    func printPostOrderTravseral() { postOrderTraversal(node: root) }
    
    func postOrderTraversal(node: Node?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        print(node.key) // root
    }
```