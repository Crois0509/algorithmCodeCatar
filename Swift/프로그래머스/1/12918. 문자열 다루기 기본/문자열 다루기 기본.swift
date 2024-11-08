func solution(_ s:String) -> Bool {
    var answer: Bool = false
    
    let check = s.filter { $0.isLetter }.count == 0
    if check {
        let num = s.map { String($0) }
        
        if num.count == 4 || num.count == 6 {
            answer = true
        } else {
            answer = false
        }
    }
    
    return answer
}