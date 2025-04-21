import Foundation

let n = Int(readLine()!)!
let studentNames = readLine()!.split(separator: " ").map { String($0) }

// 각 학생의 인기도를 저장할 딕셔너리
var popularity: [String: Int] = [:]

for name in studentNames {
    popularity[name] = 0
}

// 학생별 좋아하는 학생 정보 입력
for _ in 0..<n {
    let likedNames = readLine()!.split(separator: " ").map { String($0) }
    for liked in likedNames {
        // 해당 학생의 인기도 증가
        popularity[liked, default: 0] += 1
    }
}

// 인기도 기준 내림차순 정렬, 인기도 같으면 이름 기준 오름차순 정렬
let sorted = popularity.sorted {
    if $0.value == $1.value {
        return $0.key < $1.key
    } else {
        return $0.value > $1.value
    }
}

for (name, count) in sorted {
    print("\(name) \(count)")
}