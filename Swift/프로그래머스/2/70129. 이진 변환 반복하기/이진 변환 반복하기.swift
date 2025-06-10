import Foundation

func solution(_ s:String) -> [Int] {
    var count: Int = 0
    var result: String = s
    var zeroCount: Int = 0
    
    while result != "1" {
        count += 1
        zeroCount += result.filter { $0 == "0" }.count
        let decimalNumber = result.filter { $0 == "1" }.count
        result = String(decimalNumber, radix: 2)
    }
    
    return [count, zeroCount]
}