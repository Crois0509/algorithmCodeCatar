import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer: [Int] = []
    var highScores: [Int] = []
    
    for i in score {
        if highScores.count < k {
            highScores.append(i)
            let minScore = highScores.min() ?? 0
            
            answer.append(minScore)
            
        } else {
            highScores.append(i)
            highScores.sort()
            highScores.removeFirst()
            
            let minScore = highScores.min() ?? 0
            
            answer.append(minScore)
            
        }
    }
    
    return answer
}