import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    let a = A.sorted(by: >)
    let b = B.sorted(by: <)

    for i in a.indices {
        let sum = a[i] * b[i]
        ans += sum
    }
    
    return ans
}