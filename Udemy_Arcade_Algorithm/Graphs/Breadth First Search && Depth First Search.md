## BFS

[![Order in which the nodes get expanded](https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Breadth-first-tree.svg/300px-Breadth-first-tree.svg.png)](https://en.wikipedia.org/wiki/File:Breadth-first-tree.svg "Order in which the nodes get expanded")

너비 우선 탐색
약간 원처럼 생각해보자
원의 중심부터 점점 지름을 넓혀가면서 삥 돌아가는겨

- Social graphs
- Recommendations
- Nearest Neighbours

이런 용도로 사용할 수 있습니다~!


## DFS

[![Order in which the nodes get expanded](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Depth-first-tree.svg/250px-Depth-first-tree.svg.png)](https://en.wikipedia.org/wiki/File:Depth-first-tree.svg "Order in which the nodes get expanded")

깊이 우선 탐색

- Path finding
- Unique solutions
- Cycle detection

___

## BFS는 어떤 걸까?

BFS는 Undirected라는 걸 알고 있어야함
너비 우선 탐색 서치는 높이가 작은 노드부터 차례대로 탐색하고 더 높은 높이를 탐색한다
그리고 큐(Queue) 자료구조를 사용함 (큐는 FIFO였죠)

BFS는 하나의 노드를 기준으로 시작,
그 노드를 기준으로 근접한 노드들을 모두 먼저 방문함
근접한 노드를 먼저 방문하기 위해서 큐를 이용

![[Pasted image 20230617110854.png]]![[Pasted image 20230617110900.png]]![[Pasted image 20230617110906.png]]
![[Pasted image 20230617110927.png]]![[Pasted image 20230617110935.png]]![[Pasted image 20230617110942.png]]
![[Pasted image 20230617111000.png]]![[Pasted image 20230617111006.png]]![[Pasted image 20230617111012.png]]
![[Pasted image 20230617111019.png]]![[Pasted image 20230617111038.png]]


### BFS 코드!

```swift
class Graph {
    var V = 0                       // number of vertices
    var adj = [[Int]]()             // adjacency list
    
    init(_ V: Int) {
        self.V = V
        for _ in 0..<V {
            adj.append([Int]())     // create empty array of adjacency lists
        }
    }
    
    func addEdge(v: Int, w: Int) {
        adj[v].append(w)
    }
    
    // BFS traversal from a given source s
    func BFS(s: Int) -> [Int] {
        
        var result = [Int]()
        
        // Mark all vertices as not visited
        var visited = adj.map { _ in false }
        
        // Create BFS Queue
        var queue = Queue<Int>()
        
        // Mark first vertex as visited and enqueue
        visited[s] = true
        print("Starting at \(s)")
        queue.add(s)
        result.append(s)
        
        while queue.count > 0 {
            let current = queue.remove()!
            print("De-queueing \(current)")
            
            // Get all the adjacent vertices of the current vertex
            // If adjacent has not being visited, mark visited and enqueue
            
            for n in adj[current] {
                if visited[n] == false {
                    visited[n] = true
                    print("Queuing \(n)")
                    queue.add(n)
                    result.append(n)
                }
            }
         }
        
        return result
    }
}
```

큐를 먼저 구현해줘야함

___

## DFS
스택이라는 거! (LIFO)

![[Pasted image 20230617113108.png|300]]![[Pasted image 20230617113152.png|300]]
![[Pasted image 20230617113208.png|600]]
![[Pasted image 20230617113223.png|600]]
![[Pasted image 20230617113236.png|600]]
![[Pasted image 20230617113245.png|600]]
![[Pasted image 20230617113255.png|600]]
![[Pasted image 20230617113302.png|600]]
![[Pasted image 20230617113312.png|600]]


> 스택에 쌓이는 순서가 강의랑 인터넷 자료들이랑 조금씩 다른 부분들이 있네
> 어떤 게 정답일까..?! 🤔

->아아 Direction이 정해져 있을 때랑 undirected일 때랑 조금 다르네


### DFS 코드


// Graph 클래스 안에 메소드
```swift
// DFS traversal from a given source s
    func DFS(s: Int) -> [Int] {        
        var result = [Int]()
        
        // Mark all vertices as not visited
        var visited = adj.map { _ in false }
        
        // Create DFS Stack
        var stack = Stack<Int>()
        
        // Mark first vertex as visited and enqueue
//        print("Starting at \(s)")
        visited[s] = true
        stack.push(s)
        
        while stack.count > 0 {
            let current = stack.pop()!
//            print("Popping \(current)")
            result.append(current)
            
            // Iterate over all neighbours adding to queue and popping deep as we go
            for n in adj[current] {
                if visited[n] == false {
                    visited[n] = true
//                    print("Pushing - \(n)")
                    stack.push(n)
                }
            }
        }        
        return result
    }
```




___
### 소들님 DFS
https://babbab2.tistory.com/107



