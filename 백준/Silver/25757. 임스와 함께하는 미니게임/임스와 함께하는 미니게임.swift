import Foundation

func game(userCount: Int, divide: Int) {
    var user: Set<String> = []
    
    for _ in 0...userCount - 1 {
        let inputUser: String = readLine()!
        user.insert(inputUser)
    }
    
    print(user.count / divide)
}

let playGame = readLine()!.split(separator: " ")
var user: Set<String> = []

switch playGame[1] {
case "Y" : // 자신 포함 2명 게임(윷놀이)
    game(userCount: Int(playGame[0]) ?? 0 , divide: 1)
case "F" : // 자신 포함 3명 게임(같은 그림 찾기)
    game(userCount: Int(playGame[0]) ?? 0 , divide: 2)
case "O" : // 자신 포함 4명 게임(원카드)
    game(userCount: Int(playGame[0]) ?? 0 , divide: 3)
default :
    print("잘못된 게임")
}