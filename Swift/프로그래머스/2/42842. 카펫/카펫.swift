import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var answer: [Int] = []
    
    var height: Int = 1
    
    while true {
        let centerY = yellow / height
        guard centerY * height == yellow else {
            height += 1
            continue
        }
        
        let horizontal = centerY + 2
        let vertical = height
        
        if (horizontal * 2) + (vertical * 2) == brown {
            answer.append(horizontal)
            answer.append(vertical + 2)
            break
        } else {
            height += 1
            continue
        }
    }
    
    return answer
}