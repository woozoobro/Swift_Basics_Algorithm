LinkedList 에서 했던 세가지 방법들 BigO어떤지 얘기할 수 있나!

- Brute force 는 O(m * n)

- findMergeSpaceTime 메소드
이 방법으로 푼건 O(n+m) 

- findMergeInsight 메소드
이 방법으로 푼건 O(n+m)


## How would you reduce these?

- O(n + log n) -> O(n)

- O(7 * 2^n + 5000 * n^99) -> O(2^n)


한 가지 알면 좋은건
O(n + m)은 O(n)이 될수 없다는거!!
[ m이 > n/2 라면 O(n)은 될 수 있음 ]

