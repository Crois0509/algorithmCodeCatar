import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var answer: Int = 0
    var graph = [[Int]](repeating: [], count: n + 1)
    
    for nodes in edge {
        let firstNode = nodes[0]
        let secondNode = nodes[1]
        
        // 노드 양방향 연결
        graph[firstNode].append(secondNode)
        graph[secondNode].append(firstNode)
    }
    
    var distance = [Int](repeating: 0, count: n + 1)
    distance[1] = 1
    
    var needVisitQueue: [Int] = [1]
    var index = 0
    
    while index < needVisitQueue.count {
        let currentNode = needVisitQueue[index]
        index += 1
        
        for node in graph[currentNode] {
            if distance[node] == 0 {
                distance[node] = distance[currentNode] + 1
                needVisitQueue.append(node)
            }
        }
    }
    
    let maxDistance = distance.max() ?? 0
    answer = distance.filter { $0 == maxDistance }.count
    
    return answer
}