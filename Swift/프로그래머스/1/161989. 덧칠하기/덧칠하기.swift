import Foundation

func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var count = 0
    var end = 0
    
    for point in section {
        // 롤러가 더 이상 이 구간을 덮지 못하면 다시 칠함
        if point > end {
            count += 1
            end = point + m - 1  // 롤러가 이 위치부터 m만큼 칠함
        }
    }
    
    return count
}