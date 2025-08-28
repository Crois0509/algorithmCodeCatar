import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var zeroCount = 0
    var oneCount = 0
    
    func divide(_ x: Int, _ y: Int, _ size: Int) {
        let first = arr[x][y]
        var isSame = true
        
        for i in x..<x+size {
            for j in y..<y+size {
                if arr[i][j] != first {
                    isSame = false
                    break
                }
            }
            if !isSame { break }
        }
        
        if isSame {
            if first == 0 {
                zeroCount += 1
            } else {
                oneCount += 1
            }
        } else {
            let half = size / 2
            divide(x, y, half)               // 왼쪽 위
            divide(x, y + half, half)        // 오른쪽 위
            divide(x + half, y, half)        // 왼쪽 아래
            divide(x + half, y + half, half) // 오른쪽 아래
        }
    }
    
    divide(0, 0, arr.count)
    return [zeroCount, oneCount]
}