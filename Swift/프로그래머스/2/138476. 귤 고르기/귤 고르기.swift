import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var answer: Int = 0
    var count = k
    var dic = [Int:Int]()
    
    for i in tangerine {
        dic[i, default: 0] += 1
    }
    
    var sortedDic = dic.sorted(by: { $0.value > $1.value })
    
    while count > 0 {
        answer += 1
        
        if let max = sortedDic.first {
            count -= max.value
            sortedDic.removeFirst()
        }
    }
    
    return answer
}