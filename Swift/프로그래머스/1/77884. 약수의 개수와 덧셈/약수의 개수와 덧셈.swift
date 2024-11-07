import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer: Int = 0
    var numArray: [Int] = []
    
    for i in left...right {
        var numCount: Int = 0
        for index in 1...i where i % index == 0 {
            numCount += 1
        }
        if numCount % 2 == 0 {
            numArray.append(i)
            numCount = 0
        } else {
            numArray.append(-i)
            numCount = 0
        }
    }
    
    answer = numArray.reduce(0) { $0 + $1 }
    
    return answer
}