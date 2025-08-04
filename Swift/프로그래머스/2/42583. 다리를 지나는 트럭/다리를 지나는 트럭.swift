import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var time = 0
    var bridgeQueue = Array(repeating: 0, count: bridge_length)
    var totalWeight = 0
    var truckQueue = truck_weights
    var index = 0
    
    while !bridgeQueue.isEmpty {
        time += 1
        totalWeight -= bridgeQueue.removeFirst()
        
        if let nextTruck = truckQueue.first {
            if totalWeight + nextTruck <= weight {
                bridgeQueue.append(nextTruck)
                totalWeight += nextTruck
                truckQueue.removeFirst()
            } else {
                bridgeQueue.append(0)
            }
        }
    }
    
    return time
}