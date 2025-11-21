import Foundation

func solution(_ s:String) -> [Int] {
    var result = s
    var count: Int = 0
    var zeroCount: [String] = []
    
    while result != "1" {
        if result.contains("0") {
            let one = result.filter { $0 == "1" }
            let zero = result.filter { $0 == "0" }.map { String($0) }
            
            zeroCount.append(contentsOf: zero)
            result = one
            
        }
        
        let num = result.count
        let newNum = String(num, radix: 2)
        result = newNum
        count += 1
    }
    
    return [count, zeroCount.count]
}