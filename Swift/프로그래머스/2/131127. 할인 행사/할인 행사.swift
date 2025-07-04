import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var wantDic: [String: Int] = [:]
    var index: Int = 0
    var answer: Int = 0
    
    for j in want {
        if !discount.contains(j) {
            return 0
        }
    }
    
    for i in 0..<want.count {
        wantDic[want[i], default: 0] = number[i]
    }
    
    while (index + 9) < discount.count {
        var dic: [String: Int] = [:]
        
        for i in index...(index + 9) {
            dic[discount[i], default: 0] += 1
        }
        
        for (i, w) in want.enumerated() {
            if dic[w] == wantDic[w] {
                if i == (want.count - 1) {
                    answer += 1
                    break
                }
                continue
            } else {
                break
            }
        }
        
        index += 1
    }
    
    return answer
}