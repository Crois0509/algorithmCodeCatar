import Foundation

func solution(_ babbling: [String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var count = 0

    for word in babbling {
        var temp = word
        var prev = ""
        var isValid = true

        for w in words {
            // 연속된 단어 검사: ex) "ayaaya" → 무효
            if temp.contains(w + w) {
                isValid = false
                break
            }
        }

        // 4개 단어를 모두 제거
        for w in words {
            temp = temp.replacingOccurrences(of: w, with: " ")
        }

        // 남은 문자열에서 공백 제거
        temp = temp.replacingOccurrences(of: " ", with: "")
        
        // 제거하고 남은 게 없으면 유효한 단어
        if isValid && temp.isEmpty {
            count += 1
        }
    }

    return count
}
