func solution(_ x:Int, _ n:Int) -> [Int64] {
    guard (x >= -10000000) && (x <= 10000000) else {
        return []
    }
    guard n <= 1000 else {
        return []
    }
    var answer: [Int64] = []
    
    if n >= 1 {
        for index in 1...n {
            answer.append(Int64(x * index))
        }
    } else {
        answer.append(Int64(x))
        answer.append(Int64(n))
    }
    
    return answer
}