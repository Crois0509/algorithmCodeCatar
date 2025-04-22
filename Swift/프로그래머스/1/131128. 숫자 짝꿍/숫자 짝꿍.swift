import Foundation

func solution(_ X: String, _ Y: String) -> String {
    var xCount = [Int: Int]()
    var yCount = [Int: Int]()

    // 각 숫자의 등장 횟수를 기록
    for ch in X {
        let num = Int(String(ch))!
        xCount[num, default: 0] += 1
    }

    for ch in Y {
        let num = Int(String(ch))!
        yCount[num, default: 0] += 1
    }

    var result = [Int]()

    // 0~9 숫자 중 공통으로 등장한 숫자를 최소 개수만큼 결과에 추가
    for digit in (0...9).reversed() {
        if let xVal = xCount[digit], let yVal = yCount[digit] {
            let count = min(xVal, yVal)
            result += Array(repeating: digit, count: count)
        }
    }

    if result.isEmpty {
        return "-1"
    } else if result.first == 0 {
        return "0"
    }

    return result.map { String($0) }.joined()
}
