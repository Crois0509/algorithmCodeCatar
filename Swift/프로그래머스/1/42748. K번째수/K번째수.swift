import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    
    func graph(_ value: [Int]) -> Int {
        let i = value[0] - 1
        let j = value[1] - 1
        let k = value[2] - 1
        
        let result = Array(array[i...j]).sorted()
        
        return result[k]
    }
    
    for command in commands {
        answer.append(graph(command))
    }
    
    return answer
}