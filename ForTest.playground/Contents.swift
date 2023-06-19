import Foundation


func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var result = Array(my_string)
    for query in queries {
        var range = query[0]...query[1]
        var sub = result[range].reversed()
        result.replaceSubrange(range, with: sub)
    }
    
    return result.map {String($0)}.joined()
}

solution("rermgorpsam", [[2, 3], [0, 7], [5, 9], [6, 10]])
