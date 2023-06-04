- Stacks
책이 쌓여 있는 거라고 생각해봐요!!
책을 위로 쌓아올렸다가 다시 하나씩 빼봤다가 하면 감이 옵니다

- Queues
큐는 대기열 생각하면됨  
겐지 ->  라인 -> 디바
이렇게 한방향으로 가고 있으면 디바가 먼저 나가고 라인이 그 다음, 겐지가 그 다음
으로 순차적으로 나가는거!


## What's so special about Stacks & Queues

### Computer Stack
LIFO - Last in First Out
push & pop

- 언제 쓰이냐
Forward / back in browser
Undo/Redo functionality

### Computer Queue
FIFO - First In First Out

enqueue가 집어 넣는거 dequeue가 빼는거  
줄 선 사람들 순차적으로 빠지는 이미지 그리면 됩니다

---
### 스택을 쓰는 거

Array에선 마지막 element를 추가하거나, 삭제하는거
LinkedList에선 첫번째 head를 넣거나 빼는 거

### 큐를 쓰는거

Array에선 첫번째 element를 제거 하면 전체 index가 다 이동하게 되잖음
dequeue로 첫번째 element가 빠지면 enqueue로 다 이동하게 되는 뉘앙스

LinkedList 도 비슷함

# We generally use arrays

- Built into Swift
- Easier to work with and reason about
- Swift array has push and pop like functionality already built in!


