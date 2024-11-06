func solution(_ phone_number:String) -> String {
    var answer = ""
    
    answer = String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
    
    return answer
}