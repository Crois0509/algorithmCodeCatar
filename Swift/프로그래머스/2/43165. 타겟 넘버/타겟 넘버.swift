import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer = 0
    
    func dfs(_ index: Int, _ current: Int) {
        guard index < numbers.count else {
            answer += current == target ? 1 : 0
            return
        }
        
        let num = numbers[index]
        dfs(index + 1, current + num)
        dfs(index + 1, current - num)
    }
    
    dfs(0, 0)
    
    return answer
}