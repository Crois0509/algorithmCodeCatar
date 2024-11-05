func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer: Int = 0
    var result: [Int] = []
    
    for index in 0..<absolutes.count {
        if signs[index] == true {
            result.append(absolutes[index])
        } else {
            result.append(absolutes[index] * -1)
        }
    }
    
    answer = result.reduce(0) { $0 + $1 }
    
    return answer
}