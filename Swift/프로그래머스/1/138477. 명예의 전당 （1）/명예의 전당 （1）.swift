import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var answer = [Int]()
    var highScores = [Int]() // Top K 개수의 점수만 저장

    for i in score {
        highScores.append(i)
        
        if highScores.count > k {
            highScores.remove(at: highScores.firstIndex(of: highScores.min()!)!)
        }
        
        answer.append(highScores.min()!)
    }
    
    return answer
}
