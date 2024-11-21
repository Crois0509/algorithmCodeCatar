import Foundation

func solution(_ operations:[String]) -> [Int] {
    var answer: [Int] = []
    var heap: [Int] = []
    
    for i in operations {
        if i.first == "I" {
            let value = Int(i.dropFirst().dropFirst())
            heap.append(value ?? 0)
            heap.sort(by: >)
        } else {
            let value = Int(i.dropFirst().dropFirst())
            
            if value == 1 {
                guard heap.count > 0 else {
                    continue
                }
                heap.removeFirst()
            } else {
                guard heap.count > 0 else {
                    continue
                }
                heap.removeLast()
            }
        }
    }
    
    if heap.isEmpty {
        answer = [0, 0]
    } else {
        answer.append(heap.first!)
        answer.append(heap.last!)
    }
    
    return answer
}