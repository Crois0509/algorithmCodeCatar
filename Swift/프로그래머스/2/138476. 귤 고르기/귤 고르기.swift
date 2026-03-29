import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var dic = [Int:Int]()
    
    // 귤 크기별 저장
    for t in tangerine {
        dic[t, default: 0] += 1
    }
    
    // 수량별로 정렬
    var sortedDic = dic.sorted(by: { $0.value > $1.value })
    
    var current = 0
    var answer = 0
    
    while current < k {
        answer += 1
        current += sortedDic.removeFirst().value
    }
    
    return answer
}