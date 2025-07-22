import Foundation

func solution(_ word: String) -> Int {
    let vowels: [Character] = ["A", "E", "I", "O", "U"]
    let weights = [781, 156, 31, 6, 1]

    var result = 0 
    
    for (index, char) in word.enumerated() {
        if let charIndex = vowels.firstIndex(of: char) {
            result += charIndex * weights[index]
        }
    }
    
    result += word.count 
    
    return result
}
