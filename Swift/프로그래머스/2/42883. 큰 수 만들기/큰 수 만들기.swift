import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack: [Character] = []
    var remove = k
    
    for num in number {
        while remove > 0,
              let last = stack.last,
              last < num {
            stack.removeLast()
            remove -= 1
        }
        stack.append(num)
    }
    
    if remove > 0 {
        stack.removeLast(remove)
    }
    
    return String(stack)
}