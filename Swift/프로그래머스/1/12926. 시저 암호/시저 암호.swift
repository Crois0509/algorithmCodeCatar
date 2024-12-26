import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var answer: String = ""
    let lowerString = "abcdefghijklmnopqrstuvwxyz"
    let upperString = lowerString.uppercased()
    
    for char in s {
        
        if char == " " {
            
            answer += String(char)
            
        } else if lowerString.contains(char) {
            
            let stringIndex = lowerString.firstIndex(of: char)
                        
            let distance = lowerString.distance(from: lowerString.startIndex, to: stringIndex!)
            
            guard (distance + n) <= lowerString.count - 1 else {
                let index = (distance + n) - lowerString.count
                
                let word = String(Array(lowerString)[index])
                
                answer += word
                
                continue
            }
            
            let index = lowerString.index(stringIndex!, offsetBy: n)
            
            let word = String(lowerString[index])
                        
            answer += word
                        
        } else if upperString.contains(char) {
            
            let stringIndex = upperString.firstIndex(of: char)
                        
            let distance = upperString.distance(from: upperString.startIndex, to: stringIndex!)
            
            guard (distance + n) <= upperString.count - 1 else {
                let index = (distance + n) - upperString.count
                
                let word = String(Array(upperString)[index])
                
                answer += word
                
                continue
            }
            
            let index = upperString.index(stringIndex!, offsetBy: n)
            
            let word = String(upperString[index])
                        
            answer += word
        }
    }
    
    return answer
}