import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScores = score.sorted(by: >)  // 내림차순 정렬
    var answer = 0

    for i in stride(from: m - 1, to: sortedScores.count, by: m) {
        answer += sortedScores[i] * m
    }
    
    return answer
}
