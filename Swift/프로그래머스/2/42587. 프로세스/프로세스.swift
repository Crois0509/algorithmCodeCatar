import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    let target = (priorities[location], location)
    var queue: [(num: Int, location: Int)] = priorities.enumerated().map { ($1, $0) }
    var visit = [Bool](repeating: false, count: queue.count)
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if queue.contains(where: { $0.num > current.num }) {
            queue.append(current)
            continue
            
        } else {
            visit[current.location] = true
            
            if current == target {
                return visit.filter { $0 }.count
            }
        }
    }
    
    return 0
}