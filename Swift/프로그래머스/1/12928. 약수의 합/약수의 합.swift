func solution(_ n:Int) -> Int {
    guard (n >= 0) && (n <= 3000) else {
        return 0
    }
    var answer = 0
    
    if n > 1 {
        for index in 1...n {
            if n % index == 0 {
                answer += index
            }
        }
    } else {
        return n
    }
    
    return answer
}