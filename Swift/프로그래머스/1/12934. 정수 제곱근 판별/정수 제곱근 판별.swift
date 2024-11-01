func solution(_ n:Int64) -> Int64 {
    var answer: Int64 = 0
    var x: Int64 = 0
    
    for index in 1...n {
        x = index * index
        
        if x == n {
            answer = index
            answer = (answer + 1) * (answer + 1)
            break
        } else if x > n {
            answer = -1
            break
        }
    }
    
    return answer
}