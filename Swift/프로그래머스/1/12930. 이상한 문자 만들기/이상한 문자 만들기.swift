func solution(_ s:String) -> String {
    var answer = ""
    var stringArr = s.components(separatedBy: " ")
    var arr = [String]()
    
    for i in stringArr {
        for (j, char) in i.enumerated() {
            if j % 2 == 0 {
                arr.append(String(char.uppercased()))
            } else if j % 2 == 1 {
                arr.append(String(char.lowercased()))
            }
        }
        arr.append(" ")
    }
    arr.removeLast()
    
    answer = arr.joined()
    
    return answer
}
