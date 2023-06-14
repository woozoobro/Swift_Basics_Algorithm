import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    
    for i in 0..<arr.count {
        if stk.isEmpty || stk.last! < arr[i] {
            stk.append(arr[i])
        } else if stk.last! >= arr[i] {
            stk.removeLast()
        }
    }
    return stk
}

solution([1, 4, 2, 5, 3])
