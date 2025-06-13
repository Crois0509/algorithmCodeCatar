import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let total = brown + yellow
    
    for height in 3...total {
        if total % height != 0 { continue }
        
        let width = total / height
        
        if (width - 2) * (height - 2) == yellow {
            return [width, height]
        }
    }
    
    return []
}
