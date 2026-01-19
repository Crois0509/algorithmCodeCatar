func solution(_ m: Int, _ n: Int, _ board: [String]) -> Int {
    // 1️⃣ 문자열 → 2차원 배열
    var map = board.map { Array($0) }
    var answer = 0
    
    while true {
        // 2️⃣ 제거 대상 좌표 저장
        var removeSet = Set<[Int]>()
        
        // 3️⃣ 2x2 블록 찾기
        for r in 0..<m-1 {
            for c in 0..<n-1 {
                let ch = map[r][c]
                if ch == " " { continue }
                
                if map[r][c+1] == ch &&
                   map[r+1][c] == ch &&
                   map[r+1][c+1] == ch {
                    removeSet.insert([r, c])
                    removeSet.insert([r, c+1])
                    removeSet.insert([r+1, c])
                    removeSet.insert([r+1, c+1])
                }
            }
        }
        
        // ❌ 더 이상 제거할 블록이 없으면 종료
        if removeSet.isEmpty {
            break
        }
        
        // 4️⃣ 블록 제거
        answer += removeSet.count
        for pos in removeSet {
            map[pos[0]][pos[1]] = " "
        }
        
        // 5️⃣ 블록 떨어뜨리기 (열 단위)
        for c in 0..<n {
            var stack: [Character] = []
            
            // 아래 → 위로 블록 수집
            for r in stride(from: m-1, through: 0, by: -1) {
                if map[r][c] != " " {
                    stack.append(map[r][c])
                }
            }
            
            // 아래부터 다시 채우기
            var idx = m - 1
            for block in stack {
                map[idx][c] = block
                idx -= 1
            }
            
            // 나머지는 빈칸
            while idx >= 0 {
                map[idx][c] = " "
                idx -= 1
            }
        }
    }
    
    return answer
}
