import Foundation

func solution(_ numbers: String) -> Int {
    let nums = Array(numbers)
    var visited = Array(repeating: false, count: nums.count)
    var resultSet = Set<Int>()

    func dfs(_ current: String) {
        if !current.isEmpty {
            let value = Int(current)!
            if isPrime(value) {
                resultSet.insert(value)
            }
        }

        for i in 0..<nums.count {
            if visited[i] { continue }

            visited[i] = true
            dfs(current + String(nums[i]))
            visited[i] = false
        }
    }

    dfs("")
    return resultSet.count
}

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }

    var i = 3
    while i * i <= n {
        if n % i == 0 {
            return false
        }
        i += 2
    }
    return true
}