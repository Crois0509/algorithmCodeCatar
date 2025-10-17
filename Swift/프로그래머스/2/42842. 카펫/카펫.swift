import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var width: Int = 0
    var height: Int = 0
    var index: Int = 1
    var current: Int {
        get {
            return (width * 2) + (height * 2) - 4
        }
    }
    
    while current != brown {
        guard yellow % index == 0,
              yellow % (yellow / index) == 0
        else {
            index += 1
            continue
        }
        
        let yellowTile = yellow / index
        
        width = yellowTile + 2
        height = (yellow / yellowTile) + 2
        
        index += 1
    }
    
    if width >= height {
        return [width, height]
    } else {
        return [height, width]
    }
}