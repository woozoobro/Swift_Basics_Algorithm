
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

// Modules operator
let even = 2 % 2
let odd = 3 % 2 // remainder 1

let initialSize = 16
let index = hashCode % initialSize // guaranteed fit

let indexPositive = abs(index)
```

hashValue를 계산한 값을 index랑 매핑해서 바로 넣을 수도 있겠지만 
숫자가 너무 크기 때문에 모듈러 operator 같은 걸로 한번 처리하고 index에 넣어주게 됨  

