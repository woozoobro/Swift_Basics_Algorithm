import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    queries.forEach { query in
        for i in query[0]...query[1] {
            if i % query[2] == 0 {
                result[i] += 1
            }
        }
    }
    
    return result
}

solution([0,1,2,4,3], [[0, 4, 1],[0, 3, 2],[0, 3, 3]])
