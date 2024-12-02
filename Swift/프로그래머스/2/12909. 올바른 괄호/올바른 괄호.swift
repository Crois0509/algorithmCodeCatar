import Foundation

func solution(_ s: String) -> Bool {
    var stack: [Character] = []
    
    for char in s {
        if char == "(" {
            stack.append(char)
        } else if char == ")" {
            if stack.isEmpty { // 닫는 괄호가 나왔지만 스택이 비어있다면 잘못된 순서
                return false
            }
            stack.removeLast() // 스택에서 여는 괄호 제거
        }
    }
    
    // 모든 괄호가 처리되었을 때 스택이 비어 있어야만 true
    return stack.isEmpty
}