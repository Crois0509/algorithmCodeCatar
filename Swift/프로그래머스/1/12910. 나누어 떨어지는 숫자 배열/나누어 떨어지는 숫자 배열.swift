func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer = [Int]()
    
    let result = arr.filter {
        return $0 % divisor == 0
    }
    
    guard result.count != 0 else {
        answer.append(-1)
        return answer
    }
    
    answer = result.sorted()
    
    return answer
}