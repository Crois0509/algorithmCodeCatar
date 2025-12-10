import Foundation

func solution(_ order:[Int]) -> Int {
    var stack = [Int]()     // 보조 컨테이너 (스택)
    var current = 1         // 메인 벨트에서 꺼낼 박스 번호
    var index = 0           // order에서 현재 실어야 하는 위치
    let n = order.count
    
    while index < n {
        let target = order[index]
        
        // 1) 메인 벨트에서 target까지 push
        while current <= n && current < target {
            stack.append(current)
            current += 1
        }
        
        // 2) 메인 벨트 박스가 target인 경우
        if current == target {
            current += 1       // 박스를 건너뛰고
            index += 1         // 다음 박스를 실어야 함
            continue
        }
        
        // 3) 보조 컨테이너에서 꺼낼 수 있는지 확인
        if stack.last == target {
            stack.removeLast()
            index += 1
            continue
        }
        
        // 4) 둘 다 안되면 종료
        break
    }
    
    return index
}
