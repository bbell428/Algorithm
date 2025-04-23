# 리트코드 349번 - Intersection of Two Arrays

```swift
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1: Set<Int> = Set(nums1)
        let set2: Set<Int> = Set(nums2)
        return Array(set1.intersection(set2))
    }
}

let s: Solution = Solution()

print(s.intersection([1,2,2,1], [2,2]))
print(s.intersection([4,9,5], [9,4,9,8,4]))
```
