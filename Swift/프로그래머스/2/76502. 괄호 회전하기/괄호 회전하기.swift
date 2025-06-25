import Foundation

func solution(_ s:String) -> Int {
    
    func isValid(_ chars: [Character]) -> Bool {
        var stack: [Character] = []
        
        for ch in chars {
            if ch == "(" || ch == "[" || ch == "{" {
                stack.append(ch)
            } else {
                guard let last = stack.last else { return false }
                if (ch == ")" && last == "(") ||
                    (ch == "]" && last == "[") ||
                    (ch == "}" && last == "{") {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
    
    let sArray = Array(s)
    let n = sArray.count
    var count = 0
    
    for i in 0..<n {
        let rotated = Array(sArray[i..<n] + sArray[0..<i])
        if isValid(rotated) {
            count += 1
        }
    }
    
    return count
}