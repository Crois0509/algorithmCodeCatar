func solution(_ n:Int) -> Int {
    guard n > 3 else { return n }
    
    var a = 0
    var b = 1
    let mod = 1234567
    
    for _ in 0..<n {
        let next = (a + b) % mod
        a = b
        b = next
    }
    
    return b
}