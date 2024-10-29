import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    var answer: Int
    
    guard (num1 > 0) && (num1 <= 100) && (num2 > 0) && (num2 <= 100) else {
        return 0
    }

    let firstNumber: Float = Float(num1)
    let secondNumber: Float = Float(num2)
    let value = firstNumber / secondNumber * 1000
    answer = Int(value)
    
    return answer
}