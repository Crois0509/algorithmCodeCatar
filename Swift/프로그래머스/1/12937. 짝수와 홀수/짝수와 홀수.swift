import Foundation

func solution(_ num:Int) -> String {
    let answer: String
    
    guard ((num as? Int) != nil) else {
        return ""
    }
    
    if num == 0 || num % 2 == 0 {
        answer = "Even"
    } else {
        answer = "Odd"
    }
    
    return answer
}