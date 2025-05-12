import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var stack: [Int] = []
    var answer = 0

    for item in ingredient {
        stack.append(item)
        
        // 마지막 4개가 [1, 2, 3, 1]인지 확인
        if stack.count >= 4 &&
            stack[stack.count - 4...stack.count - 1] == [1, 2, 3, 1] {
            // 햄버거 완성!
            stack.removeLast(4)
            answer += 1
        }
    }

    return answer
}
