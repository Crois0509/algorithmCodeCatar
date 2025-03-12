import Foundation

func solution(_ s: String) -> [Int] {
    var answer = [Int]()
    var lastIndex = [Character: Int]()  // 문자별 마지막 등장 인덱스 저장

    for (index, chr) in s.enumerated() {
        if let prevIndex = lastIndex[chr] {
            answer.append(index - prevIndex)  // 이전 위치와 현재 위치 차이 저장
        } else {
            answer.append(-1)  // 처음 등장하는 문자
        }
        lastIndex[chr] = index  // 마지막 등장 위치 갱신
    }

    return answer
}