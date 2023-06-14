탑3 sort가 있나봄

## Bubble sort

54321

5부터 시작해서 54 비교하고 53 비교하고 52 비교하고 51 비교하면서 5를 제일 뒤로 보내는 방법인가봄
4도 마찬가지로 43 42 41 비교하고 45에서 4가 작으니까 4를 마지막전으로 바꾸게 되고
3도
2도 이렇게
12345로 정렬하게 되는게 버블솔트

코드로 볼까용
```swift
class BubbleSort {
    func sort(_ array: [Int]) -> [Int] {
        var arr = array
        let n = arr.count
        for i in 0..<n-1 {
            for j in 0..<n-i-1 {
                if arr[j] > arr[j+1] {
                    // swap
                    let temp = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        
        return arr
    }
}

let bubbleSort = BubbleSort()
bubbleSort.sort([5, 4, 3, 2, 1])
```

### Bubble sort의 Runtime은 어떻게 될까?
O(n^2)
