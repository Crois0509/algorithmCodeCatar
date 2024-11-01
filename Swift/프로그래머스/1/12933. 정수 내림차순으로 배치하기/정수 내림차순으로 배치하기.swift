func solution(_ n:Int64) -> Int64 {
    var answer: Int64 = 0
    
    let num = String(n).compactMap { String($0) }
    let numString = num.sorted(by: >).joined()
    
    answer = Int64(numString) ?? 0
    
    return answer
}