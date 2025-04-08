# n의 배수 고르기

```swift
import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    return numlist.filter { $0 % n == 0 }
}
```
