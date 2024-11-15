import Foundation
func solution(_ t:String, _ p:String) -> Int {
    var answer: Int = 0
    var arr: [Int] = []
    
    for i in 0...t.count - p.count {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: p.count - 1)
        
        arr.append(Int(t[startIndex...endIndex])!)
    }
    
    if let num = Int(p) {
        answer = arr.filter { $0 <= num }.count
    }
    
    return answer
}
