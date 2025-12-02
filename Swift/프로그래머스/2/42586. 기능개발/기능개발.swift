import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let daysNeeded = zip(progresses, speeds).map { (progress, speed) in
        return (100 - progress + speed - 1) / speed
    }
    
    var result: [Int] = []
    var deployDay = daysNeeded[0]
    var count = 0
    
    for day in daysNeeded {
        if day <= deployDay {
            count += 1
        } else {
            result.append(count)
            deployDay = day
            count = 1
        }
    }
    
    result.append(count)
    return result
}