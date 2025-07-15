import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(index: Int, priority: Int)] = priorities.enumerated().map { ($0.offset, $0.element) }
    var count = 0

    while !queue.isEmpty {
        let first = queue.removeFirst()
        
        if queue.contains(where: { $0.priority > first.priority }) {
            // 뒤에 더 높은 우선순위가 있으면 다시 뒤로 보냄
            queue.append(first)
        } else {
            // 실행됨
            count += 1
            if first.index == location {
                return count
            }
        }
    }
    return count
}