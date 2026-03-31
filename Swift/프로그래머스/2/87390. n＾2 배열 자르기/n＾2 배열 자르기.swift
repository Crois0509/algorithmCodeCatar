import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let left = Int(left)
    let right = Int(right)
    var result = [Int]()
    
    for idx in left...right {
        let row = idx / n
        let col = idx % n
        result.append(max(row, col) + 1)
    }
    
    return result
}