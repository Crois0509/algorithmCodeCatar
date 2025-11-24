func solution(_ n:Int) -> Int {
    var nums: [Int] = [0, 1]
    
    for i in 2...n {
        let newNum = (nums[i - 1] + nums [i - 2]) % 1234567
        nums.append(newNum)
    }
    
    if let last = nums.last {
        return last
    } else {
        return 0
    }
}