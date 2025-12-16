import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var visited = Set<Int>()
    var queue: [(value: Int, count: Int)] = [(x, 0)]
    var index = 0
    
    visited.insert(x)
    
    while index < queue.count {
        let (current, count) = queue[index]
        index += 1
        
        if current == y {
            return count
        }
        
        let nextValues = [
            current + n,
            current * 2,
            current * 3
        ]
        
        for next in nextValues {
            if next <= y && !visited.contains(next) {
                visited.insert(next)
                queue.append((next, count + 1))
            }
        }
    }
    
    return -1
}