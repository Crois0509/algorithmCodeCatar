import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 신고자별 신고 대상 저장 (중복 제거)
    var reportUsers: [String: Set<String>] = [:]
    // 피신고자별 신고당한 횟수
    var reportedCount: [String: Int] = [:]
    // 결과 저장
    var answer = [Int](repeating: 0, count: id_list.count)
    // 사용자 인덱스 빠르게 찾기 위한 맵
    let userIndex = Dictionary(uniqueKeysWithValues: id_list.enumerated().map { ($1, $0) })

    // 1. 중복 제거한 신고 처리
    let uniqueReports = Set(report)
    for entry in uniqueReports {
        let parts = entry.split(separator: " ").map { String($0) }
        let reporter = parts[0], reported = parts[1]
        
        reportUsers[reporter, default: []].insert(reported)
        reportedCount[reported, default: 0] += 1
    }

    // 2. 정지 대상 사용자 찾기
    let suspendedUsers = Set(reportedCount.filter { $0.value >= k }.map { $0.key })

    // 3. 각 사용자 별 메일 받은 횟수 카운트
    for (reporter, reportedSet) in reportUsers {
        let mailCount = reportedSet.filter { suspendedUsers.contains($0) }.count
        if let idx = userIndex[reporter] {
            answer[idx] = mailCount
        }
    }

    return answer
}
