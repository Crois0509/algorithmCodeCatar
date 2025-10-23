import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var trip: [String: [String]] = [:]
    var traverPath: [String] = []
    
    for ticket in tickets {
        let departure = ticket[0]
        let destination = ticket[1]
        
        trip[departure, default: []].append(destination)
    }
    
    for key in trip.keys {
        trip[key]?.sort(by: <)
    }
    
    func dfs(_ defarture: String) {
        while let destinations = trip[defarture], !destinations.isEmpty {
            let next = trip[defarture]!.removeFirst()
            dfs(next)
        }
        traverPath.append(defarture)
    }
    
    dfs("ICN")
    
    return traverPath.reversed()
}