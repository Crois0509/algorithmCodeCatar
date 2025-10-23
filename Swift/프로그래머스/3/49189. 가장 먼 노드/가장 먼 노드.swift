import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var nodes: [Int:Set<Int>] = [:]
    var queue: [Int] = []
    var depth: Int = 0
    var visited = Array(repeating: false, count: n + 1)
    visited[1] = true
    queue = [1]
    
    for node in edge {
        let firstNode = node[0]
        let secondNode = node[1]
        
        nodes[firstNode, default: []].insert(secondNode)
        nodes[secondNode, default: []].insert(firstNode)
    }
    
    while !queue.isEmpty {
        depth = queue.count
        
        for _ in 0..<depth {
            let node = queue.removeFirst()
            
            guard let nextNodes = nodes[node] else { continue }
            for next in nextNodes where !visited[next] {
                visited[next] = true
                queue.append(next)
            }
        }
    }
    
    return depth
}