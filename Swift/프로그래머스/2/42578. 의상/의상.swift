import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String:[String]] = [:]
    var answer: Int = 1
    
    for i in clothes {
        let category = i.last ?? ""
        let clothe = i.dropLast()
        dic[category, default: []].append(contentsOf: clothe)
    }
    
    for j in dic.values {
        answer *= (j.count + 1)
    }
    
    return answer - 1
}