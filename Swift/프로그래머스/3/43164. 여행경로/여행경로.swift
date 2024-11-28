import Foundation

func solution(_ tickets: [[String]]) -> [String] {
    var graph = [String: [String]]()
    var result = [String]() 
    // 1. 항공권 정보를 dictionary에 저장
    for ticket in tickets {
       let from = ticket[0] // 출발 공항
       let to = ticket[1]   // 도착 공항
       graph[from, default: []].append(to) // 출발지에 도착지를 추가
    }
    
    // 2. 각 출발지의 도착지 리스트를 알파벳 역순으로 정렬
    for key in graph.keys {
        graph[key]?.sort(by: >) // 역순 정렬 (stack처럼 사용하기 위해)
    }
    
    // 3. dfs 함수 구현 - 위치는 solution 함수 밖에 있어도 무방합니다.
    func dfs(_ airport: String) {
      while let destinations = graph[airport], !destinations.isEmpty {
            let next = graph[airport]!.removeLast()
            dfs(next) 
            }
        result.append(airport)
    }
    // 4. dfs 탐색 시작 ("ICN"에서 출발)
    dfs("ICN")
    // 결과는 역순으로 저장되므로 뒤집어서 반환
    return result.reversed()
}