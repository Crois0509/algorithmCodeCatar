import Foundation

func solution(_ n:Int, _ left: Int64, _ right: Int64) -> [Int] {
    var result: [Int] = []
    
    for idx in left...right {
        let row = Int(idx / Int64(n))
        let col = Int(idx % Int64(n))
        result.append(max(row, col) + 1)
    }
    
    return result
}
