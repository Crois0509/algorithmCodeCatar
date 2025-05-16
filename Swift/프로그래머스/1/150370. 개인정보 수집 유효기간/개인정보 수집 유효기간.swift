import Foundation

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    // 오늘 날짜를 일 수로 변환
    func convertToDays(_ date: String) -> Int {
        let parts = date.split(separator: ".").map { Int($0)! }
        return parts[0] * 12 * 28 + parts[1] * 28 + parts[2]
    }

    let todayDays = convertToDays(today)

    // terms를 딕셔너리로 변환
    var termDict: [String: Int] = [:]
    for term in terms {
        let parts = term.split(separator: " ")
        termDict[String(parts[0])] = Int(parts[1])!
    }

    var result: [Int] = []

    for (i, privacy) in privacies.enumerated() {
        let parts = privacy.split(separator: " ")
        let date = String(parts[0])
        let type = String(parts[1])
        
        let collectedDays = convertToDays(date)
        let expireDays = collectedDays + termDict[type]! * 28

        if todayDays >= expireDays {
            result.append(i + 1)
        }
    }

    return result
}