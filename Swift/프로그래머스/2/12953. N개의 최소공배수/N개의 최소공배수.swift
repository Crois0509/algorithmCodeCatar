func solution(_ arr:[Int]) -> Int {
    var top = arr.max() ?? 0
    var currentLCM = top
    var lcm = [Bool](repeating: false, count: arr.count)
    
    while lcm.contains(false) {
        arr.enumerated().forEach { i, num in
            if currentLCM % num == 0 {
                lcm[i] = true
            }
        }
        
        if !lcm.contains(false) {
            break
        } else {
            lcm = lcm.map { _ in false } // 초기화
            currentLCM += top
        }
    }
    
    return currentLCM
}