* 해시 테이블이 뭐지?
우리 옛날에 쓰던 전화번호부 생각해보셈
누군가의 이름을 찾으면 바로 옆에 `이름 --- 번호`
이런 식으로 매핑 되잖음

비슷하게 생각하면 됨!  


## How does hashing functions work?

hash function을 통해서 hashes 라는 값을 만들고 매핑해줌!  

```swift
let stringsHashable = "abc".hashValue

struct GridPoint {
	var x: Int
	var y: Int
	
	var hashValue: Int {
		return x.hashValue ^ y.hashValue &* 16777619
	}
}

let mainBase = GridPoint(x: 131, y: 541)
mainBase.hashValue
```

예전에는 이렇게 구현했는데  
Hashable이라는 protocol을 채택하는 것만으로도 손쉽게 구현 가능!!  

