import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var maxY = 0
    var minY = wallpaper.count + 1
    var minX = wallpaper.first?.count ?? 0 + 1
    var maxX = 0
    
    for (index, target) in wallpaper.enumerated() where target.contains("#") {
        if let targetIndex = target.firstIndex(of: "#") {
            let lux = target.distance(from: target.startIndex, to: targetIndex)
            minX = min(minX, lux)
        }
        
        if let targetIndex = target.lastIndex(of: "#") {
            let rdx = target.distance(from: target.startIndex, to: targetIndex) + 1
            maxX = max(maxX, rdx)
        }
        
        minY = min(minY, index)
        
        maxY = max(maxY, index + 1)
    }
    
    return [minY, minX, maxY, maxX]
}