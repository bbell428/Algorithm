# 리트코드 1385번 - Find the Distance Value Between Two Arrays

```swift
class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var count = 0
        
        for i in arr1 {
            var isValid = true
            for j in arr2 {
                if abs(i - j) <= d {
                    isValid = false
                    break
                }
            }
            if isValid =
                count += 1
            }
        }
        return count
    }
}

let s = Solution()
print(s.findTheDistanceValue([4,5,8], [10,9,1,8], 2))
```
