import Foundation

func solution(_ n:Int) -> Int {
    var answer: Int = 0
    
    guard (n > 0) && (n <= 1000) else {
        return 0
    }
    
    for index in 1...n {
        if index % 2 == 0 {
            answer += index
        } else {
            continue
        }
    }
    
    return answer
}