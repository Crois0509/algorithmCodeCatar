import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ currentFatigue: Int, _ count: Int) {
        answer = max(answer, count)
        
        for i in dungeons.indices {
            let minRequired = dungeons[i][0]
            let fatigueCost = dungeons[i][1]
            
            if !visited[i] && currentFatigue >= minRequired {
                visited[i] = true
                
                dfs(currentFatigue - fatigueCost, count + 1)
                visited[i] = false
            } else {
                continue
            }
        }
    }
    
    dfs(k, 0)
    
    return answer
}