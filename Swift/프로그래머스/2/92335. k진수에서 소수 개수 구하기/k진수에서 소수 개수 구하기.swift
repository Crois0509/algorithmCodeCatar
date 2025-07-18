import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let converted = String(n, radix: k)
    let candidates = converted.split(separator: "0").compactMap { Int($0) }
    
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        if n == 2 { return true }
        if n % 2 == 0 { return false }
        
        let upper = Int(Double(n).squareRoot())
        for i in stride(from: 3, through: upper, by: 2) {
            if n % i == 0 { return false }
        }
        return true
    }

    return candidates.filter { isPrime($0) }.count
}