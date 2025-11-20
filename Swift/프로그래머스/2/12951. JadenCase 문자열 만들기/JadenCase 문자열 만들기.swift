import Foundation

func solution(_ s:String) -> String {
    var result = ""
    var isFirst = true
    
    for ch in s {
        if ch == " " {
            result.append(" ")
            isFirst = true
        } else {
            if isFirst {
                result.append(ch.uppercased())
                isFirst = false
            } else {
                result.append(ch.lowercased())
            }
        }
    }
    
    return result
}