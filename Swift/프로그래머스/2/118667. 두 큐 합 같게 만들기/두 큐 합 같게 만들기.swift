import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let total = queue1.reduce(0, +) + queue2.reduce(0, +)
    
    guard total % 2 == 0 else { return -1 }
    
    let target = total / 2
    var answer: Int = 0
    let queue = queue1 + queue2
    var startIndex = 0
    var endIndex = queue1.count - 1
    var sum = queue[startIndex...endIndex].reduce(0, +)
    var count: Int = 0
        
    while sum != target {
        guard
            count < (queue1.count + queue2.count) * 2,
            startIndex < endIndex,
            endIndex < queue.count - 1,
            sum != 0
        else { return -1 }
        
        if sum > target {
            sum -= queue[startIndex]
            startIndex += 1
            
        } else {
            endIndex += 1
            sum += queue[endIndex]
        }
        
        answer += 1
        count += 1
    }
    
    return answer
}