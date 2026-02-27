import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var values = priorities.enumerated().map { (num: $1, location: $0) }
    var sortedPriorities = priorities.sorted(by: >) // 우선순위만 정렬해둡니다 😈✨
    var index = 0
    var inputCount = 0
    
    while !values.isEmpty {
        let current = values[index]
        
        // 현재 위치의 중요도가 가장 높은 순서와 일치하는지 확인
        if current.num == sortedPriorities.first! {
            inputCount += 1
            sortedPriorities.removeFirst() // 실행했으므로 목록에서 제거            
            values.remove(at: index) // 실행된 프로세스는 제거 (혹은 visit 처리)
            
            if current.location == location {
                return inputCount
            }
            
            // 값을 제거했다면 index는 그대로 유지 (자동으로 다음 원소를 가리킴)
            if index >= values.count { index = 0 }
        } else {
            // 더 높은 순위가 있다면 다음으로 이동
            index = (index + 1) % values.count
        }
    }
    return 0
}