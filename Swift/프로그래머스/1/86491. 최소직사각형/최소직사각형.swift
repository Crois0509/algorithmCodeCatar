import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var answer: Int = 0
    var widths: [Int] = []
    var heights: [Int] = []
    
    for size in sizes {
        let first = size[0]
        let second = size[1]
        
        if first > second {
            widths.append(first)
            heights.append(second)
        } else {
            widths.append(second)
            heights.append(first)
        }
    }
    
    let maxWidth = widths.max() ?? 0
    let maxHeight = heights.max() ?? 0
    
    answer = maxWidth * maxHeight
    
    return answer
}