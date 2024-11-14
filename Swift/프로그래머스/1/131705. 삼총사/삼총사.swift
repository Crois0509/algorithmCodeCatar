import Foundation

func solution(_ number:[Int]) -> Int {
    var answer = 0

    for i in number.indices {
        for j in i + 1..<number.count {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}
