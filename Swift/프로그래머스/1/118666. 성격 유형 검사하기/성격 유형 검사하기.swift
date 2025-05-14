import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let first: [String] = ["R", "C", "J", "A"]
    let second: [String] = ["T", "F", "M", "N"]
    var firstTypes: [String: Int] = [:]
    var secondTypes: [String: Int] = [:]
    
    for type in first {
        firstTypes[type] = 0
    }
    
    for type in second {
        secondTypes[type] = 0
    }
    
    for (index, type) in survey.enumerated() {
        let firstType = String(type.first!)
        let secondType = String(type.last!)
        let count = choices[index]
        
        if count < 4 {
            var value: Int = 0
            
            if count == 1 {
                value = 3
            } else if count == 2 {
                value = 2
            } else if count == 3 {
                value = 1
            }
            
            if firstTypes.keys.contains(firstType) {
                firstTypes[firstType]! += value
            } else if secondTypes.keys.contains(firstType) {
                secondTypes[firstType]! += value
            }
            
        } else if count > 4 {
            var value: Int = 0
            
            if count == 5 {
                value = 1
            } else if count == 6 {
                value = 2
            } else if count == 7 {
                value = 3
            }
            
            if firstTypes.keys.contains(secondType) {
                firstTypes[secondType]! += value
            } else if secondTypes.keys.contains(secondType) {
                secondTypes[secondType]! += value
            }
        }
    }
    
    var index: Int = 0
    var answer: String = ""
    
    while index < first.count {
        let firstCount = firstTypes[first[index]] ?? 0
        let secondCount = secondTypes[second[index]] ?? 0
        
        if firstCount > secondCount {
            answer += first[index]
        } else if firstCount < secondCount {
            answer += second[index]
        } else {
            answer += first[index]
        }
        
        index += 1
    }
    
    return answer
}