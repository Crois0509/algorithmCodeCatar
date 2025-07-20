import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let baseTime = fees[0]
    let baseCost = fees[1]
    let unitTime = fees[2]
    let unitCost = fees[3]
    
    var dic: [String:[Int]] = [:]
    var answer: [Int] = []
    
    for car in records {
        let record = car.split(separator: " ").map { String($0) }
        let minute = record[0].split(separator: ":").compactMap { Int($0) }
        let time = minute.reduce(0) { ($0 * 60) + $1 }
        
        dic[record[1], default: []].append(time)
    }
    
    for record in dic.sorted(by: { $0.key < $1.key }) {
        var values = record.value
        var currentTime = 0
        var times: Int = 0
                
        if values.count % 2 == 0 {
            for (i, time) in values.enumerated() {
                if (i + 1) % 2 == 0 {
                    times += (time - currentTime)
                    currentTime = 0
                } else {
                    currentTime = time
                }
            }
        } else {
            let outCost = 1439 - values.removeLast()
            
            for (i, time) in values.enumerated() {
                if (i + 1) % 2 == 0 {
                    times += (time - currentTime)
                    currentTime = 0
                } else {
                    currentTime = time
                }
            }
            
            times += outCost
        }
                
        if times <= baseTime {
            answer.append(baseCost)
        } else {
            var excess = Int(Double((times - baseTime) / unitTime))
            
            if ((times - baseTime) % unitTime) != 0 {
                excess += 1
            }
            
            let cost = baseCost + Int(excess * unitCost)
            answer.append(cost)
        }
    }
    
    return answer
}