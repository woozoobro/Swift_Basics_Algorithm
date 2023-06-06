import Foundation

func solution(_ num_list:[Int]) -> Int {
    var even = ""
    var odd = ""
    
    for i in num_list {
        i % 2 == 0 ? even.append("\(i)") : odd.append("\(i)")
    }
    
    return Int(even)! + Int(odd)!
}

solution([3,4,5,2,1])
solution([5,7,8,3])
