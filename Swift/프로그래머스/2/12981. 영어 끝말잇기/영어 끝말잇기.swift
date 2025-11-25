import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var stack: [String] = []
    var dic: [Int: [String]] = [:]
    var current: Int = 0
    var timming: Int = 0
    
    for word in words {
        current = current >= n ? 1 : current + 1
        dic[current, default: []].append(word)
        
        if let last = stack.last {
            guard word.first != last.last ||
                  stack.contains(word)
            else {
                stack.append(word)
                continue
            }
            
            timming = dic[current]?.count ?? 0
            break
            
        } else {
            stack.append(word)
        }
    }
    
    if timming == 0 {
        current = 0
    }
    
    return [current, timming]
}