import Foundation

func solution(_ citations:[Int]) -> Int {
    let sorted = citations.sorted(by: >)
    
    for (i, c) in sorted.enumerated() {
        if c <= i {
            return i
        }
    }
    
    return sorted.count
}