import Foundation

guard let input = readLine(), let length = Int(input) else {
    exit(0) // 입력이 없거나 변환에 실패하면 프로그램 종료
}

for _ in 0..<length {
    let inputArr = Array(readLine()!)
    
    var sign = 0 // !이 아니라면 1을 넣어서 조건문 구성
    var leftCnt = 0 // 왼쪽 !
    var number = 0 // 연산 후 숫자
    
    for char in inputArr {
        if sign == 0 && char == "!" {
            leftCnt += 1
        } else if char != "!" {
            sign = 1
            number = Int(String(char)) ?? 0
        } else if sign == 1 && char == "!" {
            number = 1
        }
    }
    
    if number == 0 {
        if leftCnt % 2 == 0 {
            number = 0
        } else {
            number = 1
        }
    } else {
        if leftCnt % 2 == 0 {
            number = 1
        } else {
            number = 0
        }
    }
    
    print(number)
}