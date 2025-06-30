import Foundation

func solution(_ citations: [Int]) -> Int {
    let sorted = citations.sorted(by: >) // 내림차순 정렬
    
    for (index, citation) in sorted.enumerated() {
        if index + 1 > citation {
            return index
        }
    }
    
    return citations.count
}
