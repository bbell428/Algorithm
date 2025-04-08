# 리트코드 70번 - Climbing Stairs

```swift
class Solution {
    var memo: [Int: Int] = [:] // 계산 결과를 저장할 딕셔너리

    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }

        if let result = memo[n] {
            return result  // 이미 계산한 값이면 반환
        }

        let result = climbStairs(n - 1) + climbStairs(n - 2)
        memo[n] = result

        return result
    }
}
```
