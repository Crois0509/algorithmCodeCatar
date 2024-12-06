import Foundation

func solution(_ s:String) -> Bool {
    var answer :Bool = false
    var count: Int = 0
    
    for char in s {
        if char == "(" {
            count += 1
        } else {
            count -= 1
        }
        guard count >= 0 else { return false }
    }

    if count == 0 { answer = true }
    
    return answer
}