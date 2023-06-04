> Balanced Brackets
> https://www.hackerrank.com/challenges/balanced-brackets/problem
> 
> A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].
> Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of matched pairs of brackets: [], {}, and ().
> A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. For example, {[(])} is not balanced because the contents in between { and } are not balanced. The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of parentheses encloses a single, unbalanced closing square bracket, ].
> By this logic, we say a sequence of brackets is balanced if the following conditions are met:
> It contains no unmatched brackets.
> The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched pair of brackets.
> Given  strings of brackets, determine whether each sequence of brackets is balanced. If a string is balanced, return YES. Otherwise, return NO.

![[Pasted image 20230604124012.png]]
![[Pasted image 20230604124206.png]]
![[Pasted image 20230604124055.png]]

```swift
func isBalanced(s: String) -> String {
	// Do your work here...
	return "No"
}

isBalanced(s: "{[()]}")
```



## 나의 풀이

문제를 제대로 이해 못해서 잘못 풀었다..
괄호들이 밸런스 있게 되어 있는 지를 체크하는 건데
전체를 반으로 나눠서 반 반 리버스한 거 비교했을 때라고 착각함

---

## 강의 풀이
```swift
func isBalanced(s: String) -> String {
    var st = [Character]()
    for c in s {
        switch c {
            case "{", "(", "[":
                st.append(c)
            case "}":
                if (st.isEmpty || (st.last != "{")) {
                    return "No"
                }
                st.popLast()
            case ")":
                if (st.isEmpty || (st.last != "(")) {
                    return "NO"
                }
                st.popLast()
            case "]":
                if (st.isEmpty || (st.last != "[")) {
                    return "No"
                }
                st.popLast()
            default:
                print("breaking \(c)")
        }
    }
    return st.isEmpty ? "YES" : "NO"
}
```
