import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    
    func dfs(_ currentSum: Int, _ index: Int) {
        if index == numbers.count {
            if currentSum == target {
                answer += 1
            }
            return
        }
                
        dfs(currentSum + numbers[index], index + 1)
        dfs(currentSum - numbers[index], index + 1)
    }
    
    dfs(0, 0)
    
    return answer
}