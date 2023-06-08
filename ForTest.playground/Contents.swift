import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    return queries.map { q in
        let min = arr[q[0]...q[1]].filter { $0 > q[2] }.min() ?? -1
        return min == Int.max ? -1 : min
    }
}

solution([0,1,2,4,3],  [[0, 4, 2],[0, 3, 2],[0, 2, 2]])
