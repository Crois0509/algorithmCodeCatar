import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer: Int = 0
    var intArray = [Int]()
    intArray.append(contentsOf: (0...9))
    
    for index in numbers {
        if intArray.contains(index) {
            intArray.remove(at: intArray.firstIndex(of: index)!)
        }
    }
    
    answer = intArray.reduce(0) { $0 + $1 }
    
    return answer
}