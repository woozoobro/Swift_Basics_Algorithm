import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    let dice = [a, b, c, d]
    var counts = [Int: Int]()

    for i in dice {
        counts[i, default: 0] += 1
    }
    
    if counts.count == 1 {
        let p = dice[0]
        return 1111 * p
    } else if counts.count == 4 {
        return dice.min()!
    } else if counts.count == 3 {
        let p = counts.first(where: { $0.value == 2 })!.key
        let q = counts.first(where: {$0.value == 1})!.key
        let r = dice.filter { $0 != p  && $0 != q }.first!
        return q * r
    } else {
        if counts.values.contains(2) {
            let p = counts.first(where: {$0.value == 2})!.key
            let q = dice.filter{ $0 != p }.first!
            return (p+q) * abs(p-q)
        } else {
            let p = counts.first(where: {$0.value == 3})!.key
            let q = dice.filter{ $0 != p}.first!
            return (10*p + q) * (10*p + q)
        }
    }
}

solution(2, 2, 2, 2)
solution(4, 1, 4, 4)
solution(6, 3, 3, 6)
solution(2, 5, 2, 6)
solution(6, 4, 2, 5)
