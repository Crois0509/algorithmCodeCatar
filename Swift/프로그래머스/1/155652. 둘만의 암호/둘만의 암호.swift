import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    // 1. 알파벳 중 skip 문자 제거
    let fullAlphabets = Array("abcdefghijklmnopqrstuvwxyz")
    let skipSet = Set(skip)
    let availableAlphabets = fullAlphabets.filter { !skipSet.contains($0) }

    // 2. 알파벳을 [Character: Int] 딕셔너리로 맵핑하면 더 빠르게 접근 가능
    let count = availableAlphabets.count
    var result = ""

    for char in s {
        if let currentIndex = availableAlphabets.firstIndex(of: char) {
            let newIndex = (currentIndex + index) % count
            result.append(availableAlphabets[newIndex])
        }
    }

    return result
}
