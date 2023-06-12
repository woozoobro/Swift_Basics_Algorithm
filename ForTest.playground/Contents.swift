import Foundation

// l부터 r까지 숫자 중에 0과 5로만 이루어진 정수를 오름차순으로 저장한 배열을 return

func solution(_ l:Int, _ r:Int) -> [Int] {
    var check = Array(l...r).map{String($0)}.filter {
        !$0.contains("1") && !$0.contains("2") &&
        !$0.contains("3") && !$0.contains("4") &&
        !$0.contains("6") && !$0.contains("7") &&
        !$0.contains("8") && !$0.contains("9")
    }
        
    return check.count == 0 ? [-1] : check.map { Int($0)! }
}

solution(5, 55)
solution(10, 20)

