# 리트코드 232번 - Implement Queue using Stacks

```swift
import Foundation

class MyQueue {
    private var stackIn: [Int] = []  // 새 원소를 추가하는 스택
    private var stackOut: [Int] = [] // pop(), peek() 시 사용하는 스택
    
    func push(_ x: Int) {
            stackIn.append(x)
    }
    
    func pop() -> Int {
        if stackOut.isEmpty {
            while !stackIn.isEmpty {
                stackOut.append(stackIn.removeLast())
            }
        }
        return stackOut.popLast() ?? -1
    }
    
    func peek() -> Int {
        if stackOut.isEmpty {
            while !stackIn.isEmpty {
                stackOut.append(stackIn.removeLast())
            }
        }
        return stackOut.last ?? -1
    }
    
    func empty() -> Bool {
        return stackIn.isEmpty && stackOut.isEmpty
    }
}

//  * Your MyQueue object will be instantiated and called as such:
let obj = MyQueue()
obj.push(1)
obj.push(2)
obj.peek()
obj.pop()
obj.empty()
```
