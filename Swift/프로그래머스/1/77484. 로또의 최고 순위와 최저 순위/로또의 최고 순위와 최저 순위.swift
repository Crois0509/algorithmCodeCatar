import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var minResult: Int = 0
    var maxResult: Int = 0
    let rank: [Int:Int] = [
        6:1,
        5:2,
        4:3,
        3:4,
        2:5
    ]
    var answer: [Int] = []
    
    lottos.forEach {
        if win_nums.contains($0) {
            minResult += 1
        }
    }
    
    var blank = lottos.filter { $0 == 0 }.count
    maxResult = minResult + blank
    
    answer.append(rank[maxResult] ?? 6)
    answer.append(rank[minResult] ?? 6)
    
    return answer
}