## Fibonacci Series & Memoization

## What is a Fibonacci series?

ex) 1, 1, 2, 3, 5, 8, 13, 21 ...
Series of numbers where every number, after the first two, is the sum of the two preceding ones

Fn = Fn-1 + Fn-2

```swift
func fib(_ n: Int) -> Int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fib(n - 1) + fib(n - 2)
	}
}
```
이게 기본적인 fib 문제인데 이렇게 풀면 n이 커질 때 계산 시간도 많이 걸림

## What is memoization and how can it help?

- Memoization Defn
An optimization technique that stores expensive calculated results
and returns them when asked for again

It's like Caching Expensive results

```swift
var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
	if n == 0 { return 0 }
	else if n == 1 { return 1 }
	
	if let result = memo[n] { return result }
	memo[n] = fib(n - 1) + fib(n - 2)
	
	return memo[n]!
}
```

이건 O(n)임

___

## 샘플

```swift
func fibNaive(_ n: Int) {
	print(n)
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fibNaive(n - 1) + fibNaive(n - 2)
	}
}

fibNaive(20)

---

var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
	if n == 0 { return 0 }
	else if n == 1 { return 1 }
	
	if let result = memo[n] { return result }
	
	memo[n] = fib(n - 1) + fib(n - 2)
	
	return memo[n]!
}
```


___

## 알아야 하는 거

피보나치,
Memoization 으로 최적화하는 테크닉




