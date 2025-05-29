import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var currentRanks = players
    var nameToIndex = [String: Int]()
    
    // 초기 맵 구성
    for (index, name) in players.enumerated() {
        nameToIndex[name] = index
    }
    
    for name in callings {
        guard let currentIndex = nameToIndex[name], currentIndex > 0 else { continue }
        
        let frontIndex = currentIndex - 1
        let frontPlayer = currentRanks[frontIndex]
        
        // 순서 바꾸기
        currentRanks.swapAt(currentIndex, frontIndex)
        
        // 인덱스 맵도 함께 업데이트
        nameToIndex[name] = frontIndex
        nameToIndex[frontPlayer] = currentIndex
    }
    
    return currentRanks
}
