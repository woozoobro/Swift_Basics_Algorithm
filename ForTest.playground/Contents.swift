import Foundation

public func solution(_ A: [String], _ B: [String], _ P: String) -> String {
    var containsArray: [String] = []
    
    for (index, phones) in B.enumerated() {
        if phones.contains(P) {
            containsArray.append(A[index])
        }
    }
    
    var result = ""
    
    if containsArray.count == 0 {
        result = "NO CONTACT"
    } else {
        let sorted = containsArray.sorted(by: { $0 < $1})
        result = sorted[0]
    }
    
    return result
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

solution(A, B, P)  // pom
solution(["sander", "amy", "ann"], ["12345", "23456", "123"], "1") // ann
solution(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112") // NO CONTACT
//// edge cases
//solution([String](), [String](), "")
//solution(A, B, "")
