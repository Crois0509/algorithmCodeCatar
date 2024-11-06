func solution(_ s:String) -> String {
    var answer: String = ""
    var x = s
    
    if x.count % 2 == 0 {
        while x.count != 2 {
            x.removeFirst()
            x.removeLast()
        }
    } else {
        while x.count != 1 {
            x.removeFirst()
            x.removeLast()
        }
    }
    
    answer = x
    
    return answer
}