import Foundation

func isPermutation(_ text: String, _ perm: String) -> Bool {    
    return text.reversed().map{String($0)}.joined() == perm
}

isPermutation("abc", "cba")
isPermutation("abc", "xyz")
