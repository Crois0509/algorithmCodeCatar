import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic = [String:Int]()
    var answer = 0
    
    for cloth in clothes {
        let category = cloth[1]
        dic[category, default: 0] += 1
    }
    
    let total = dic.values.reduce(1) { $0 * ($1 + 1) }
    answer = total - 1
    
    return answer
}