# 리트코드 187번(해시/딕셔너리) - Repeated DNA Sequences

```swift
class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        var dict: [String:Int] = [:]
        let char: Array = Array(s)
        var result: [String] = []
        
        guard s.count >= 10 else {
            return []
        }
        
        for i in 0...char.count-10 {
            var str: String = ""
            
            str += String(char[i..<i+10])
            
            dict[str, default: 0] += 1
            
            if dict[str] == 2 {
                result.append(str)
            }
        }
        
        return result
    }
}

let sol: Solution = Solution()
let input = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
print(sol.findRepeatedDnaSequences(input))
```
