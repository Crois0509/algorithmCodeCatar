import Foundation

func solution(_ n:Int) -> Int {
    var result = n
    var currentOne = Int.max
    var oneCount = String(n, radix: 2).reduce(0) { $0 + ($1 == "1" ? 1 : 0) }
    
    while currentOne != oneCount {
        result += 1
        currentOne = String(result, radix: 2).reduce(0) { $0 + ($1 == "1" ? 1 : 0) }
    }
    
    return result
}