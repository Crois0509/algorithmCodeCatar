import Foundation

func solution(_ s:String) -> Bool {
     var stack: [String] = []
    
    for char in s {
        
        let current = String(char)
        
        if !stack.isEmpty && current == ")" {
            stack.removeLast()
            
        } else if current == "(" {
            stack.append(current)
            
        } else {
            return false
        }
        
    }
    
    return stack.isEmpty
}