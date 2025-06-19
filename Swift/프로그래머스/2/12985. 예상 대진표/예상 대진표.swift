import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var playerA = a
    var playerB = b
    var round = 0
    
    while playerA != playerB {
        playerA = (playerA + 1) / 2
        playerB = (playerB + 1) / 2
        round += 1
    }
    
    return round
}