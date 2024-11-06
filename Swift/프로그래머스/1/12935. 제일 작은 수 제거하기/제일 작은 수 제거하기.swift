func solution(_ arr:[Int]) -> [Int] {
    var answer = [Int]()
    var intArray = arr
    
    intArray.remove(at: intArray.firstIndex(of:  intArray.min() ?? 0) ?? 0)
    
    guard !intArray.isEmpty else {
        answer.append(-1)
        return answer
    }
    
    answer = intArray
    
    return answer
}
