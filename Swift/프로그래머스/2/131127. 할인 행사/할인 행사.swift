import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var dic: [String:Int] = [:]
    
    for i in 0..<want.count {
        let product = want[i]
        let count = number[i]
        
        dic[product] = count
    }
    
    var index = 0
    var answer = 0
    
    while index + 9 < discount.count {
        let maxIndex = index + 9
        var currentDic = dic
        
        for j in index...maxIndex {
            let product = discount[j]
            
            if let count = currentDic[product] {
                if count - 1 <= 0 {
                    currentDic.removeValue(forKey: product)
                } else {
                    currentDic[product] = count - 1
                }
            }
        }
        
        if currentDic.isEmpty {
            answer += 1
        }
        
        index += 1
    }
    
    return answer
}