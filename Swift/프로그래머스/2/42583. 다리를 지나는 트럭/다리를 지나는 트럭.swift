import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var time = 0
    var bridge = Array(repeating: 0, count: bridge_length)
    var totalWeight = 0
    var index = 0 // truck_weights를 순회할 인덱스 포인터! 😈👆
    
    // 다리에 무언가(트럭 혹은 빈 공간)가 있는 동안 계속됩니다
    while !bridge.isEmpty {
        time += 1
        // 다리에서 나가는 트럭/빈 공간의 무게를 뺍니다
        totalWeight -= bridge.removeFirst()
        
        // 대기 중인 트럭이 아직 있다면?
        if index < truck_weights.count {
            let next = truck_weights[index]
            
            // 다리가 견딜 수 있으면 트럭 입장!
            if totalWeight + next <= weight {
                bridge.append(next)
                totalWeight += next
                index += 1 // 다음 트럭으로 포인터 이동!
            } else {
                // 견딜 수 없으면 빈 공간(0)을 추가해서 다리 길이를 유지합니다
                bridge.append(0)
            }
        }
    }
    return time
}
    