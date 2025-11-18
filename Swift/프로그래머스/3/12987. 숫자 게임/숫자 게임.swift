import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let teamA = a.sorted()
    let teamB = b.sorted()
    
    var ai = 0
    var bi = 0
    var win = 0
    
    while ai < teamA.count && bi < teamB.count {
        if teamB[bi] > teamA[ai] {
            win += 1
            ai += 1
            bi += 1
        } else {
            bi += 1
        }
    }
    
    return win
}