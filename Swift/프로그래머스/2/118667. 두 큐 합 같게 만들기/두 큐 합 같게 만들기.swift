import Foundation

func solution(_ queue1: [Int], _ queue2: [Int]) -> Int {
    let sum1 = queue1.reduce(0, +)
    let sum2 = queue2.reduce(0, +)
    let total = sum1 + sum2

    // 전체 합이 홀수면 불가능
    if total % 2 != 0 { return -1 }

    let target = total / 2
    let queue = queue1 + queue2

    var startIndex = 0
    var endIndex = queue1.count - 1
    var currentSum = sum1
    var count = 0

    // 모든 원소가 두 번 이상 이동하면 의미 없음
    let limit = queue.count * 2

    while currentSum != target {
        if count > limit { return -1 }

        if currentSum > target {
            currentSum -= queue[startIndex]
            startIndex += 1
        } else {
            endIndex += 1
            if endIndex >= queue.count { return -1 }
            currentSum += queue[endIndex]
        }

        count += 1
    }

    return count
}
