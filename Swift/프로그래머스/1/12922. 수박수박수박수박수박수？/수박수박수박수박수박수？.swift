func solution(_ n:Int) -> String {
    var answer: String = ""
    
    if n > 1 {
        for _ in 1...n {
            answer += "수"
            guard answer.count < n else {
                break
            }
            
            answer += "박"
            guard answer.count < n else {
                break
            }
        }
    } else {
        answer = "수"
    }
    
    return answer
}