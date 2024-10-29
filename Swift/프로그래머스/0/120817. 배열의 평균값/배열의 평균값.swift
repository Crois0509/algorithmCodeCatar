import Foundation

func solution(_ numbers:[Int]) -> Double {
    var answer: Double = 0.0
    
    guard (numbers.count >= 1) && (numbers.count <= 100) else {
        return 0
    }
    let check = numbers.map {
        return ($0 >= 0) && ($0 <= 1000)
    }
    
    guard check.contains(false) == false else {
        return 0
    }
    
    for index in numbers {
        answer += Double(index)
    }
    answer = answer / Double(numbers.count)
    
    return answer
}