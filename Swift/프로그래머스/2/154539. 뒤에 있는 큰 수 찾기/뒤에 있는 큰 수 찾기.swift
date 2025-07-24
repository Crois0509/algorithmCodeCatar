import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var answer = Array(repeating: -1, count: numbers.count)
    var stack: [Int] = []  // 인덱스를 저장

    for i in stride(from: numbers.count - 1, through: 0, by: -1) {
        let current = numbers[i]

        // 스택에서 현재 값보다 작거나 같은 값 제거
        while let last = stack.last, last <= current {
            stack.removeLast()
        }

        // 스택의 top이 현재 값보다 큰 수이면 정답
        if let last = stack.last {
            answer[i] = last
        }

        // 현재 값을 스택에 추가
        stack.append(current)
    }

    return answer
}
