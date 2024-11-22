import Foundation

func solution(_ operations: [String]) -> [Int] {
    var answer = [Int]()
    
    var maxHeap = [Int]()
    var minHeap = [Int]()
    var heapCount = 0
    
    for operation in operations {
        let oder = operation.split(separator: " ")
        let command = oder.first!
        guard let value = Int(oder[1]) else {
            continue
        }
        
        if command == "I" {
            maxHeap.append(value)
            maxHeap.sort(by: >)

            minHeap.append(value)
            minHeap.sort()

            heapCount += 1
            continue
            
        } else {
            if value == 1 && heapCount >= 1 {
                maxHeap.removeFirst()
                minHeap.removeLast()
                heapCount -= 1
                continue
                
            } else if value == -1 && heapCount >= 1 {
                minHeap.removeFirst()
                maxHeap.removeLast()
                heapCount -= 1
                continue
            }
        }
    }
    
    if heapCount <= 0 {
        answer = [0, 0]
    } else {
        answer = [maxHeap.first!, minHeap.first!]
    }
    
    return answer
}