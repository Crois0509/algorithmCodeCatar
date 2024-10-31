import Foundation

func solution(_ n:Int) -> Int {
    guard (n >= 3) && (n <= 1000000) else {
        return 0
    }
    var answer = 0
    var numArray: [Int] = []
    
    for index in 1...n {
        if n % index == 1 {
            numArray.append(index)
        }
    }
    
    if numArray.isEmpty == false {
        numArray.sort()
        answer = numArray[0]
    } else {
        return 0
    }
    
    return answer
}