import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer: Int = 0
    var index: Int
    var dex: Int
    
    for (i, num) in nums.enumerated() {
        index = i + 1 // 초기화
        dex = index + 1
        
        while index + 1 < nums.count {
            
            let result = num + nums[index] + nums[dex]
                        
            var isPrime = true
            
            for i in stride(from: 2, to: result, by: 1) where result % i == 0 {
                isPrime = false
                break
            }
            
            if isPrime {
                answer += 1
            }
            
            if dex == nums.count - 1 {
                index += 1
                dex = index + 1
            } else {
                dex += 1
            }
            
        }
    }

    return answer
}