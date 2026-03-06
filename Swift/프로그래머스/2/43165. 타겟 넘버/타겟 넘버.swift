import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer: Int = 0
    
    func dfs(num: Int, index: Int) {
        if index == numbers.count - 1 {
            answer += num == target ? 1 : 0
            
        } else {
            let next = index + 1
            dfs(num: num + numbers[next], index: next)
            dfs(num: num - numbers[next], index: next)
        }
    }
    
    dfs(num: numbers[0], index: 0)
    dfs(num: -numbers[0], index: 0)
    
    return answer
}