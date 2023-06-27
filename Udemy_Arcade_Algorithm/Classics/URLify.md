
##### Challenge
See if you can replaces all the spaces in a a string with the ASCII symbol for space '%20'. Assume you are given the length of the final string.
Hint: Use array of char[].


```swift
func urlify(_ url: String, length: Int) -> String {
	return ""
}

urlify("My Home Page      ", length: 16)  // "My%20Home%20Page"
```




___

### 풀이

```swift
func urlify(_ url: String, length: Int) -> String {
    var result = Array<Character>(repeating: " ", count: length)
    
    let url = url.trimmingCharacters(in: .whitespacesAndNewlines)
    let urlChars = Array(url)
    
    var pointer = 0
    
    for i in 0..<urlChars.count {
        if urlChars[i] != " " {
            result[pointer] = urlChars[i]
            pointer += 1
        } else {
            result[pointer] = "%"
            result[pointer+1] = "2"
            result[pointer+2] = "0"
            pointer = pointer + 3
        }
    }
    
    return String(result)
}
```