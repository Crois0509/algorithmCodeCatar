import Foundation

func solution(_ angle:Int) -> Int {
    let answer: Int
    
    guard (angle > 0) && (angle <= 180) else {
        return 0
    }
    
    if (1..<90).contains(angle) {
        answer = 1
        return answer
    } else if 90 == angle {
        answer = 2
        return answer
    } else if (91..<180).contains(angle) {
        answer = 3
        return answer
    } else if 180 == angle {
        answer = 4
        return answer
    }
    return 0
}