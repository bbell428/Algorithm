import Foundation

// 이분 탐색 함수
func binarySearchFirstIndex(of target: Int, in array: [Int]) -> Int {
    var left = 0
    var right = array.count - 1
    var result = -1

    while left <= right {
        let mid = (left + right) / 2
        if array[mid] < target {
            left = mid + 1
        } else {
            if array[mid] == target {
                result = mid
            }
            right = mid - 1
        }
    }

    return result
}

let input = readLine()!.split(separator: " ").map { Int($0) }
let n = input[0] ?? 0
let m = input[1] ?? 0

var arr: [Int] = []
var result: [Int] = []

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for _ in 0..<m {
    let target = Int(readLine()!)!
    let index = binarySearchFirstIndex(of: target, in: arr)
    result.append(index)
}

for i in result {
    print(i)
}
