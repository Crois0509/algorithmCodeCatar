import Foundation

func solution(_ n:Int) -> Int {
    
    var str = String(n, radix: 3)
    var str2 = ""
    
    for i in str.reversed() {
        str2 += String(i)
    }
    
    
    return Int(str2, radix: 3)!
}
