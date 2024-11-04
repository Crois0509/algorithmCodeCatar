func solution(_ seoul:[String]) -> String {
    var answer = ""
    
    let num = seoul.firstIndex(of: "Kim")
    
    answer = "김서방은 \(num ?? 0)에 있다"
    
    return answer
}