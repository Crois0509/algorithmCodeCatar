import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let rowsArr1 = arr1.count
    let colsArr1 = arr1[0].count
    
    let rowsArr2 = arr2.count
    let colsArr2 = arr2[0].count
    
    guard colsArr1 == rowsArr2 else {
        return []
    }
    
    var resultMatrix = Array(repeating: Array(repeating: 0, count: colsArr2), count: rowsArr1)
    
    for i in 0..<rowsArr1 {
        for j in 0..<colsArr2 {
            var sum = 0
            for k in 0..<colsArr1 {
                sum += arr1[i][k] * arr2[k][j]
            }
            resultMatrix[i][j] = sum
        }
    }
    
    return resultMatrix
}