import Foundation

func solution(_ food:[Int]) -> String {
    var answer: String = ""
    var foods: [Int] = []
    var index: Int = 0
    
    for i in 1..<food.count {
        index += 1
        let num = food[i] / 2
        
        if num >= 1 {
            for i in 1...num {
                foods.append(index)
            }
        }
    }
    
    let challenger = foods.reversed()
    foods.append(0)
    foods.append(contentsOf: challenger)
    
    let result = foods.map { String($0) }.joined()
    answer = result
    
    return answer
}