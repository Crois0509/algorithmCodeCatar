import Foundation

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var answer = 0
    var clothesDic: [String: Int] = [:]
    
    for i in clothes where i.count >= 2 {
        if let value = i.last {
            clothesDic[value, default: 0] += 1
        }
    }
    
    let totalCombinations = clothesDic.values.reduce(1) { $0 * ($1 + 1) }
    
    answer = totalCombinations - 1
        
    return answer
}