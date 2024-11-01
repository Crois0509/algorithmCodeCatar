func solution(_ n:Int64) -> [Int] {
    guard (n <= 10000000000) else {
        return []
    }
    var answer: [Int] = []
    
    let numString = String(n).compactMap { Int(String($0)) }

    answer = numString.reversed()
    
    return answer
}