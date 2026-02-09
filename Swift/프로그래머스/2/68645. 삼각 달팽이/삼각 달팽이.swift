import Foundation

func solution(_ n: Int) -> [Int] {
    var triangle = Array(
        repeating: Array(repeating: 0, count: n),
        count: n
    )

    let dx = [1, 0, -1]
    let dy = [0, 1, -1]

    var x = 0
    var y = 0
    var dir = 0
    var num = 1
    let maxNum = n * (n + 1) / 2 

    while num <= maxNum {
        triangle[x][y] = num
        num += 1

        let nx = x + dx[dir]
        let ny = y + dy[dir]

        if nx < 0 || nx >= n || ny < 0 || ny >= n || triangle[nx][ny] != 0 {
            dir = (dir + 1) % 3
        }

        x += dx[dir]
        y += dy[dir]
    }

    return triangle.flatMap { $0 }.filter { $0 != 0 }
}
