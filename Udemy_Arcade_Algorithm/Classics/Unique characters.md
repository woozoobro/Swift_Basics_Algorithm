```swift
/*
 _   _      _                ___ _
| | | |_ _ (_)__ _ _  _ ___ / __| |_  __ _ _ _ ___
| |_| | ' \| / _` | || / -_) (__| ' \/ _` | '_(_-<
 \___/|_||_|_\__, |\_,_\___|\___|_||_\__,_|_| /__/
                |_|

 Challenge: Given a string, see if you can detect whether it contains only unique chars.
 
 */

func isUnique(_ text: String) -> Bool {
    return true
}

isUnique("ab")
isUnique("aa")
isUnique("abcdefghijklmnopqrstuvwxyz")

```

## 나의 풀이

```swift
func isUnique(_ text: String) -> Bool {
    var result: [Character : Int] = [:]
    text.forEach { char in
        result[char, default: 0] += 1
    }
    return result.values.filter { $0 > 1 }.isEmpty
}
```