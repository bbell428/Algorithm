import Foundation

let input = readLine()!.split(separator: " ").map { Int($0) }
let busCount = input[0] ?? 0        // 버스 수
let userArriveTime = input[1] ?? 0  // 자신 도착 시간

var waitTimes: [Int] = []

for _ in 0..<busCount {
    let bus = readLine()!.split(separator: " ").map { Int($0) }
    let start = bus[0] ?? 0     // 버스 시작
    let interval = bus[1] ?? 0  // 버스 간격
    let count = bus[2] ?? 0     // 버스 수
    
    let arrivalTimes = (0..<count).map { start + $0 * interval }
    
    waitTimes += arrivalTimes.filter { $0 >= userArriveTime }.map { $0 - userArriveTime }
}

if let minWaitTime = waitTimes.min() {
    print(minWaitTime)
} else {
    print(-1)
}