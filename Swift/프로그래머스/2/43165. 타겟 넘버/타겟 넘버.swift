import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var count = 0  // 타겟 넘버를 만드는 방법의 수

    func dfs(_ index: Int, _ currentSum: Int) {
        // 모든 숫자를 사용한 경우
        if index == numbers.count {
            if currentSum == target {  // 타겟 넘버와 일치하는지 확인
                count += 1
            }
            return
        }

        // 현재 숫자를 더하거나 빼서 다음 단계로 진행
        dfs(index + 1, currentSum + numbers[index])  // + 선택
        dfs(index + 1, currentSum - numbers[index])  // - 선택
    }

    dfs(0, 0)  // 탐색 시작: 첫 인덱스와 초기 합 0으로 시작
    return count
}