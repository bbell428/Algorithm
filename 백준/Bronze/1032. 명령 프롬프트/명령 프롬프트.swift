import Foundation

let length = Int(readLine()!)!
var arr = Array(readLine()!)
for _ in 1 ..< length{
    let com = Array(readLine()!)
    for (k, m) in com.enumerated() {
        if arr[k] != m {
            arr[k] = "?"
        }
    }
}

print(arr.map{String($0)}.joined())