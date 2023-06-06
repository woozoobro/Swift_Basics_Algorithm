> The universal hash function used by **Set** and **Dictionary**

hasher는 arbitary sequence를 integer hash value로 매핑할 때 사용할 수 있다.

```swift
var hasher = Hasher()
hasher.combine(23)
hasher.combine("Hello")
let hashValue = hasher.finalize()
```
![[Pasted image 20230606094121.png]]

