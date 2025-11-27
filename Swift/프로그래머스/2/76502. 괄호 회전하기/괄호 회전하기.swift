import Foundation

func solution(_ s: String) -> Int {
    let brackets: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    var answer = 0
    let arr = Array(s)

    func isValid(_ str: [Character]) -> Bool {
        var stack: [Character] = []

        for ch in str {
            if ch == "(" || ch == "[" || ch == "{" {
                stack.append(ch)
            } else {
                if stack.isEmpty { return false }
                if stack.removeLast() != brackets[ch] { return false }
            }
        }
        return stack.isEmpty
    }

    for i in 0..<arr.count {
        let rotated = Array(arr[i...] + arr[..<i])
        if isValid(rotated) { answer += 1 }
    }

    return answer
}
