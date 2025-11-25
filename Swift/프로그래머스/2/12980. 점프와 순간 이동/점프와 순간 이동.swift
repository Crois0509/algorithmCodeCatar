import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    var current = n
    
    while current > 0 {
        if current == 1 {
            current -= 1
            answer += 1
            break
        }
        
        if current % 2 == 0 {
            current /= 2
            
        } else {
            current -= 1
            answer += 1
        }
    }
    
    return answer
}