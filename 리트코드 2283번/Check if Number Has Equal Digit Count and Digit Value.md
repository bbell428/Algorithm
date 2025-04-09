# 리트코드 2283번 - Check if Number Has Equal Digit Count and Digit Value

```swift
class Solution {
    func digitCount(_ num: String) -> Bool {
        var dict: [Character : Int] = [:]
        
        for ch in num {
            dict[ch, default: 0] += 1
        }
        
        for (i, ch)  in num.enumerated() {
            let resultNum = Int(String(ch))
            let resultDict = dict[Character(String(i))] ?? 0
            
            if resultNum != resultDict {
                return false
            }
        }
        return true
    }
}

print(Solution().digitCount("1210")) // true
print(Solution().digitCount("030"))  // false
```
