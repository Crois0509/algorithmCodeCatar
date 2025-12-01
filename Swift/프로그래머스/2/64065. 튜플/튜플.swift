import Foundation

func solution(_ s:String) -> [Int] {
    let trimmed = s.dropFirst().dropLast()
    let parts = trimmed
        .components(separatedBy: "},{")
        .map { $0.replacingOccurrences(of: "{", with: "").replacingOccurrences(of: "}", with: "") }
    
    var sets = parts.map { $0.split(separator: ",").map { Int($0)! } }
    
    sets.sort { $0.count < $1.count }
    
    var answer: [Int] = []
    var seen = Set<Int>()
    
    for set in sets {
        for num in set {
            if !seen.contains(num) {
                seen.insert(num)
                answer.append(num)
            }
        }
    }
    
    return answer
}