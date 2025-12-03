import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    let max = t * m
    var nums: [String] = []
    
    for num in 0..<max {
        let str = String(num, radix: n)
        nums.append(str)
    }
    
    let joind = Array(nums.joined())
    
    var result = ""
    
    for i in stride(from: p - 1, to: joind.count, by: m) {
        guard result.count < t else { break }
        
        result += "\(joind[i])".uppercased()
    }
    
    return result
}