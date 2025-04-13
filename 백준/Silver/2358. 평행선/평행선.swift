import Foundation

let n = Int(readLine()!)!
var xCount: [Int: Int] = [:]
var yCount: [Int: Int] = [:]

for _ in 0..<n {
    let point = readLine()!.split(separator: " ").map { Int($0)! }
    let x = point[0]
    let y = point[1]

    xCount[x, default: 0] += 1
    yCount[y, default: 0] += 1
}

let xLines = xCount.values.filter { $0 >= 2 }.count
let yLines = yCount.values.filter { $0 >= 2 }.count

print(xLines + yLines)