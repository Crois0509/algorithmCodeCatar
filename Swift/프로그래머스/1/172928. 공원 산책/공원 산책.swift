import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    let height = park.count
    let width = park[0].count
    let parkMap = park.map { Array($0) }

    // 시작 위치 찾기
    var pos = (x: 0, y: 0)
    for i in 0..<height {
        if let j = park[i].firstIndex(of: "S") {
            pos = (x: i, y: park[i].distance(from: park[i].startIndex, to: j))
            break
        }
    }

    // 방향 설정
    let directions: [String: (dx: Int, dy: Int)] = [
        "N": (-1, 0),
        "S": (1, 0),
        "W": (0, -1),
        "E": (0, 1)
    ]

    for route in routes {
        let parts = route.split(separator: " ")
        let dir = String(parts[0])
        let dist = Int(parts[1])!

        let move = directions[dir]!
        var nx = pos.x
        var ny = pos.y
        var canMove = true

        for _ in 0..<dist {
            nx += move.dx
            ny += move.dy

            // 공원 밖이거나 장애물이면 이동 불가
            if nx < 0 || nx >= height || ny < 0 || ny >= width || parkMap[nx][ny] == "X" {
                canMove = false
                break
            }
        }

        // 조건 만족시 위치 이동
        if canMove {
            pos = (x: pos.x + move.dx * dist, y: pos.y + move.dy * dist)
        }
    }

    return [pos.x, pos.y]
}