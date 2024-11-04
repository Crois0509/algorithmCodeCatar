func solution(_ num: Int) -> Int {
    guard num != 1 else {
        return 0
    }
    
    var answer = 0
    var number = num
    
    while number != 1 {
        if number % 2 == 0 {
            number /= 2
            answer += 1
        } else {
            number = number * 3 + 1
            answer += 1
        }
        guard answer >= 500 else {
            continue
        }
        answer = -1
        break
    }
    
    return answer
}