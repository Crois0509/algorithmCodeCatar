import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var answer: Int = 0
    var visited = Array(repeating: false, count: n)

    func dfs(_ node: Int) {
        visited[node] = true
        for next in 0..<n {
            if computers[node][next] == 1 && !visited[next] {
                dfs(next)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            answer += 1
        }
    }
    
    return answer
}