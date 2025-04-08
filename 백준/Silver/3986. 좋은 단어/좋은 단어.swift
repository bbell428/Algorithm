import Foundation

func goodWord(_ word: String) -> Bool {
    var stack: [Character] = []
    
    for ch in word {
        if stack.isEmpty || stack.last != ch {
            stack.append(ch)
        } else if stack.last == ch {
            stack.removeLast()
        }
    }
    
    return stack.isEmpty
}

// 입력
let n = Int(readLine()!)!
var count = 0

for _ in 0..<n {
    let word = readLine()
    
    if goodWord(word!) {
        count += 1
    }
}

print(count)
