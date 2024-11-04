func solution(_ x:Int) -> Bool {
    var answer: Bool = false
    
    var num: Int = x
    var numArray: [Int] = []
    
    if x >= 10 {
        while num > 0 {
            numArray.append(num % 10)
            num = num / 10
        }
        var number: Int = 0
        for index in numArray {
            number += index
        }
        answer = x % number == 0 ? true : false
    } else {
        answer = x % num == 0 ? true : false
    }
    
    
    return answer
}