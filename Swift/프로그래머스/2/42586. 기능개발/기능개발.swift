import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var daysNeeded: [Int] = []
    var result: [Int] = []
    
    for i in progresses.indices {
        let remaining = 100 - progresses[i]
        let day = (remaining + speeds[i] - 1) / speeds[i]
        daysNeeded.append(day)
    }
    
    var current = daysNeeded[0]
    var count = 1
    
    for i in 1..<daysNeeded.count {
        if daysNeeded[i] <= current {
            count += 1
        } else {
            result.append(count)
            current = daysNeeded[i]
            count = 1
        }
    }
    
    result.append(count)
    return result
}