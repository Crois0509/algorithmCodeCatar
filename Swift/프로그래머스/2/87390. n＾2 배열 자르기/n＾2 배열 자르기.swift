import Foundation

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var result: [Int] = []

    for k in left...right {
        let row = Int(k / Int64(n))
        let col = Int(k % Int64(n))
        result.append(max(row, col) + 1)
    }

    return result
}
