import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var answer: Int = 0
    var figure = k
    var startCount = 0
    var dungenonsCheck: [Bool] = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ count: inout Int, _ currentFigure: inout Int) {
        answer = max(answer, count)
        
        for (index, dungeon) in dungeons.enumerated() {
            guard dungenonsCheck[index] == false else { continue }
            guard currentFigure >= dungeon[0] else { continue }
            
            count += 1
            currentFigure -= dungeon[1]
            dungenonsCheck[index] = true
            
            dfs(&count, &currentFigure)
            
            dungenonsCheck[index] = false
            count -= 1
            currentFigure += dungeon[1]
        }
    }
    
    dfs(&startCount, &figure)
    
    return answer
}