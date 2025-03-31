import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var visitDeck: Set<String> = []
    var visitDeck2: Set<String> = []
    var result: [String] = []
    
    var firstIndex = 0
    var secondIndex = 0
    
    for i in goal {
        
        if firstIndex >= cards1.count  {
            firstIndex -= 1
        } else if secondIndex >= cards2.count {
            secondIndex -= 1
        }
        
        let first = cards1[firstIndex]
        let second = cards2[secondIndex]
        
        if i == first && !visitDeck.contains(first) {
            visitDeck.insert(first)
            firstIndex += 1
            result.append(first)
            continue
            
        } else if i == second && !visitDeck2.contains(second) {
            visitDeck2.insert(second)
            secondIndex += 1
            result.append(second)
            continue
            
        } else {
            return "No"
        }
    }
    
    if result == goal {
        return "Yes"
    }
    
    return "No"
}