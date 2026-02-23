import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    // 1. 각 작업의 배포 가능일까지 걸리는 시간을 미리 계산 (정수 연산 올림 팁)
    let days = zip(progresses, speeds).map { (p, s) in
        (100 - p + s - 1) / s
    }
    
    var answer = [Int]()
    var maxDay = days[0]
    var count = 0
    
    // 2. 순회하며 그룹화
    for day in days {
        if day <= maxDay {
            count += 1
        } else {
            answer.append(count)
            count = 1
            maxDay = day
        }
    }
    answer.append(count)
    
    return answer
}