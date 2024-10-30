func solution(_ arr:[Int]) -> Double {
    var answer: Double = 0
    
    guard (arr.count >= 1) && (arr.count <= 100) else {
        return 0
    }
    
    let check = arr.map {
        return ($0 >= -10000) && ($0 <= 10000)
    }
    
    guard check.contains(false) == false else {
        return 0
    }
    
    for index in arr {
        answer += Double(index)
    }
    answer = answer / Double(arr.count)
    
    return answer
}