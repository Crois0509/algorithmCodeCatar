import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer: [Int] = []
    var visitNum: Set<Int> = []
    var numDic: [Int: [Int]] = [:]
    
    for (i, j) in numbers.enumerated() {
        let key = j
        var values = numbers
        values.remove(at: i)
        
        numDic[key, default: []].append(contentsOf: values)
    }
    
    numDic.forEach { dic in
        for i in dic.value {
            let num = dic.key + i
            visitNum.insert(num)
        }
    }
    
    answer = Array(visitNum).sorted()
    
    return answer
}