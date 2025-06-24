import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    // 1. 귤의 크기별로 개수 세기
    var sizeCount: [Int: Int] = [:]
    for t in tangerine {
        sizeCount[t, default: 0] += 1
    }

    // 2. 개수를 기준으로 내림차순 정렬
    let sortedCounts = sizeCount.values.sorted(by: >)

    // 3. 개수 누적하면서 k개 이상이 되는 시점의 종류 수 세기
    var sum = 0
    var kind = 0

    for count in sortedCounts {
        sum += count
        kind += 1
        if sum >= k {
            break
        }
    }

    return kind
}