# 리트코드 225번 - Implement Stack using Queues

```swift
import Foundation

class MyStack {
    private var queue1: [Int] = []
    private var queue2: [Int] = []

    func push(_ x: Int) {
        queue1.append(x)

        while !queue2.isEmpty {
            queue1.append(queue2.removeFirst())
        }

        swap(&queue1, &queue2)
    }

    func pop() -> Int {
        return queue2.removeFirst()
    }

    func top() -> Int {
        return queue2.first ?? -1
    }

    func empty() -> Bool {
        return queue1.isEmpty && queue2.isEmpty
    }
}

// Your MyStack object will be instantiated and called as such:
let obj = MyStack()
obj.push(1)
obj.push(2)
obj.pop()
obj.top()
obj.empty()
```
