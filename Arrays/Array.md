
## Overview

Array는 가장 흔한 타입의 데이터 타입임.
Array는 같은 타입의 element들을 가지고 있는다!  

* 선언은 요렇게!
```swift
// Shortened forms are preferred
var emptyDoubles: [Double] = []

// The full type name is also allowed
var emptyFloats: Array<Float> = Array()
```


* 만약에 미리 크기를 지정하고 싶다면!
```swift
var digitCounts = Array(repeating: 0, count: 10)
print(digitCounts)
// Prints "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"
```

## Accessing Array Values

* for-in Loop를 써서 array요소들에 하나씩 순차적으로 돌려볼 수 있음  

```swift
for street in streets { print("I don't live on \(street).")}
// Prints "I don't live on Albemarle."
// Prints "I don't live on Brandywine."
// Prints "I don't live on Chesapeake."
```

- isEmpty를 써서 비었는지 체크도 가능
```swift
if oddNumbers.isEmpty {
	print("I don't know any odd numbers.")				   
} else {
	print("I know \(oddNumbers.count) odd numbers")	
}
```

- .first랑 .last를 써서 첫번째와 마지막 확인 가능(근데 옵셔널이다)
```swift
if let firstElement = oddNumbers.first, let lastElement = oddNumbers.last {
	print(firstElement, lastElement, separator: ", ")																   
}
// Prints "1, 15"
```

- 대괄호랑 Index로 개별적인 원소들에 접근가능
```swift
print(oddNumbers[0], oddNumbers[3], separator: ", ")
```

## Adding and Removing Elements

- Add랑 Remove할 수 있습니다~
```swift
var students = ["Ben", "Ivy", "Jordell"]

students.append("Maxime")
students.append(contentsOf: ["Shakia", "William"])
```
이렇게 개별적인 원소 혹은 sequence로 추가도 가능합니다~!

- 원하는 index에 집어넣을 수도 있구요
```swift
students.insert("Liam", at: 3)
```

- 원하는 index에 있는 원소를 제거할 수도 있겠죠
```swift
students.remove(at: 0)

students.removeLast()
```
.removeLast()같은 경우엔 마지막 원소 제거!!

- array를 루핑해서 일치하는 Index를 발견하고 교체도 가능해요
```swift
if let i = students.firstIndex(of: "Maxime") {
	students[i] = "Max"
} 
```

## Growing the Size of an Array

모든 array는 가지고 있는 내용을 붙들기 위해서 특정한 메모리를 reserve하게 됩니다.
element를 array에 추가할 때 array는 reserve하고 있던 공간을 초과해서 더 큰 메모리를 할당하고,
가지고 있던 element들을 복사해서 새로운 storage에 옮기게 돼요.

- 그리고 Array는 개별적인 value 타입이라 element를 바꾼다고 다른 애들도 바뀌게 되진 않아요
```swift
var numbers = [1, 2, 3, 4, 5]
var numbersCopy = numbers
numbers[0] = 100
print(numbers)
// Prints "[100, 2, 3, 4, 5]"
print(numbersCopy)
// Prints "[1, 2, 3, 4, 5]"
```
밑에 껀 안 바꼈죠!


- 클래스 인스턴스를 element로 들고 있다면 어떨까요?
```swift
class IntegerReference {
	var value = 10					
}
var firstIntegers = [IntegerReference(), IntegerReference()]
var secondIntegers = firstIntegers

firstIntegers[0].value = 100
print(secondIntegers[0].value)
// Prints "100"

// Replacements, additions, and removals are still visible
// only in the modified array
firstIntegers[0] = IntegerReference()
print(firstIntegers[0].value)
// Prints "10"
print(secondIntegers[0].value)
// Prints "100"
```

copy-on-write 가 된다는 거 기억하기!
