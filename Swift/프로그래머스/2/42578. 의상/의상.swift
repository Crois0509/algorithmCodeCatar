import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothDic: [String:Int] = [:]
    var answer: Int = 0
    
    for cloth in clothes {
        let category = cloth[1]        
        clothDic[category, default: 0] += 1
    }
    
    let total = clothDic.values.reduce(1) { $0 * ($1 + 1) }
    answer = total - 1
    
    return answer
}