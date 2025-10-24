import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue: [Int] = []
    
    for op in operations {
        let replacing = op.split(separator: " ")
        let operation = replacing[0]
        let num = Int(replacing[1]) ?? 0
        
        if operation == "I" {
            queue.append(num)
        } else if operation == "D" {
            guard !queue.isEmpty else { continue }
            if num == 1 {
                let maxIndex = queue.firstIndex(of: queue.max() ?? 0)
                queue.remove(at: maxIndex ?? 0)
            } else {
                let minIndex = queue.firstIndex(of: queue.min() ?? 0)
                queue.remove(at: minIndex ?? 0)
            }
        }
    }
    
    if queue.isEmpty {
        return [0, 0]
    } else {
        return [queue.max()!, queue.min()!]
    }
}