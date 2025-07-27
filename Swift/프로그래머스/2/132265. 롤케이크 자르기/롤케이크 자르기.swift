import Foundation

func solution(_ topping: [Int]) -> Int {
    var answer = 0
    var left: [Int: Int] = [:]
    var right: [Int: Int] = [:]

    // 초기에는 모든 토핑을 right에 넣는다
    for t in topping {
        right[t, default: 0] += 1
    }

    for t in topping {
        // 왼쪽에 토핑 추가
        left[t, default: 0] += 1

        // 오른쪽에서 해당 토핑 제거
        right[t]! -= 1
        if right[t]! == 0 {
            right.removeValue(forKey: t)
        }

        // 서로 다른 토핑 개수가 같으면 answer 증가
        if left.count == right.count {
            answer += 1
        }
    }

    return answer
}
