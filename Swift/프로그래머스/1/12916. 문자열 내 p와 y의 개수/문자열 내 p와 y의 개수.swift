import Foundation

func solution(_ s:String) -> Bool {
    let arr = Array(s.lowercased()).filter { $0 == "p" || $0 == "y" }
    
    guard !arr.isEmpty else { return true }
    
    let pCount = arr.filter { $0 == "p" }.count
    let yCount = arr.filter { $0 == "y" }.count
    
    return pCount == yCount
}