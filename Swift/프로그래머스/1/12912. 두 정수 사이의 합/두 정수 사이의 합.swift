func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer: Int64 = 0
    
    if a < b {
        for index in a...b {
            answer += Int64(index)
        }
    } else if a == b {
        answer = Int64(a)
    } else if a > b {
        for index in b...a {
            answer += Int64(index)
        }
    }
    
    return answer
}