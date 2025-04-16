import Foundation

let inputCount: Int = Int(readLine() ?? "0") ?? 0
var arr: [String] = []

for _ in 0..<inputCount {
    arr.append(readLine() ?? "")
}

var setCollection: Set<String> = Set(arr) // Set특징으로 중복 제거

let result = Array(setCollection).sorted {
    if $0.count == $1.count {
        return $0 < $1  // 길이가 같으면 사전 순으로
    } else {
        return $0.count < $1.count  // 길이가 짧은 것부터
    }
}

for i in result {
    print(i)
}
