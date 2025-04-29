import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var answer: [Int] = []
    var minPresses: [Character: Int] = [:]
    
    for key in keymap {
        for (i, char) in key.enumerated() {
            let pressCount = i + 1
            if let existring = minPresses[char] {
                minPresses[char] = min(existring, pressCount)
            } else {
                minPresses[char] = pressCount
            }
        }
    }
    
    for target in targets {
        var press: Int = 0
        for j in target {
            if let count = minPresses[j] {
                press += count
            } else {
                press = -1
                break
            }
        }
        answer.append(press)
    }
    
    return answer
}