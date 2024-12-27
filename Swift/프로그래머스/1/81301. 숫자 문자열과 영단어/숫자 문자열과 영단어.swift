import Foundation

func solution(_ s:String) -> Int {
    var answer: Int = 0
    var num = s
    var words: [String] = [
        "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"
    ]
    
    for i in 0..<words.count {
        num = num.replacingOccurrences(of: words[i], with: String(i))
    }
    
    answer = Int(num) ?? 0
    
    return answer
}