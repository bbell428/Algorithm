import Foundation

while let str = readLine() {
    var result: [Int] = [0, 0, 0, 0] // 배열 순서대로 소문자, 대문자, 숫자, 공백
    
    for char in str {
        switch char {
        case "a"..."z":
            result[0] += 1
        case "A"..."Z":
            result[1] += 1
        case "0"..."9":
            result[2] += 1
        case " ":
            result[3] += 1
        default: break
        }
    }
    print("\(result[0]) \(result[1]) \(result[2]) \(result[3])")
}
