import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var hasLost = Set(lost)
    var hasReserve = Set(reserve)
    
    // 여벌이 있지만 잃어버린 학생은 자기 입을 수 있으므로 제외
    let both = hasLost.intersection(hasReserve)
    hasLost.subtract(both)
    hasReserve.subtract(both)
    
    // 체육복 빌려주기
    for r in hasReserve.sorted() {
        if hasLost.contains(r - 1) {
            hasLost.remove(r - 1)
        } else if hasLost.contains(r + 1) {
            hasLost.remove(r + 1)
        }
    }
    
    return n - hasLost.count
}
