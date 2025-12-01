func solution(_ dirs:String) -> Int {
    var visited = Set<String>()
    var x = 0, y = 0
    
    for d in dirs {
        let (nx, ny): (Int, Int)
        
        switch d {
        case "U":
            (nx, ny) = (x, y + 1)
        case "D":
            (nx, ny) = (x, y - 1)
        case "R":
            (nx, ny) = (x + 1, y)
        case "L":
            (nx, ny) = (x - 1, y)
        default:
            continue
        }
        
        // 범위 벗어나면 무시
        guard (-5...5).contains(nx),
              (-5...5).contains(ny) else { continue }
        
        // 길 저장 (정방향, 역방향)
        visited.insert("\(x),\(y)->\(nx),\(ny)")
        visited.insert("\(nx),\(ny)->\(x),\(y)")
        
        x = nx; y = ny
    }
    
    // 정방향과 역방향이 모두 저장되므로 2로 나눔
    return visited.count / 2
}
