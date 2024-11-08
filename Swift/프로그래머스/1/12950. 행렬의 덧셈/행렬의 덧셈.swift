func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = []
    var numArray: [Int] = []
    
    for i in arr1.indices {
        for j in arr1[i].indices {
            var num = arr1[i][j] + arr2[i][j]
            numArray.append(num)
        }
        answer.append(numArray)
        numArray.removeAll()
    }
    
    return answer
}