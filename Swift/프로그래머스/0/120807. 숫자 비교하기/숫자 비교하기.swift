import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    let answer: Int
    
    guard (num1 >= 0) && (num1 <= 10000) && (num2 >= 0) && (num2 <= 10000) else {
        answer = 0
        return answer
    }
    if num1 == num2 {
        answer = 1
        return answer
    } else {
        answer = -1
        return answer
    }
    
}