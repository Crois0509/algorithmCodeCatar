import Foundation

func solution(_ s:String) -> Int {
    var answer = 0
    var index = s.startIndex
    
    while index < s.endIndex {
        let x = s[index]
        var countX = 0
        var countNonX = 0
        
        var endIndexForGroup = index
        
        while endIndexForGroup < s.endIndex {
            let currentChar = s[endIndexForGroup]
            if currentChar == x {
                countX += 1
            } else {
                countNonX += 1
            }
            
            if countX == countNonX {
                endIndexForGroup = s.index(after: endIndexForGroup)
                break
            }
            
            endIndexForGroup = s.index(after: endIndexForGroup)
        }
        
        answer += 1
        index = endIndexForGroup
    }

    return answer
}