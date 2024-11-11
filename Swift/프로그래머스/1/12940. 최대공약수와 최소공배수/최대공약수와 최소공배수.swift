func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer: [Int] = []
    var gcd: Int = 0
    
    for i in 1...min(n, m) {
        if n % i == 0 && m % i == 0 {
            gcd = i
        }
    }
    
    answer.insert(gcd, at: 0)
    answer.insert((n * m) / gcd, at: 1)
    
    return answer
}