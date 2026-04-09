func solution(_ str1:String, _ str2:String) -> Int {
        
    func makeBigrams(from text: String) -> [String] {
        let words = Array(text.lowercased())
        var result = [String]()
        
        for i in 0..<words.count - 1 {
            let char1 = words[i]
            let char2 = words[i + 1]
        
            if !char1.isLetter || !char2.isLetter {
                continue
            
            } else {
                let word = "\(char1)\(char2)"
                result.append(word)
            }
        }
        
        return result
    }
    
    var first = makeBigrams(from: str1)
    var second = makeBigrams(from: str2)
    
    let firstCount = first.count
    let secondCount = second.count
    
    var duple = 0
    
    while !first.isEmpty {
        let word = first.removeFirst()
        
        if let index = second.firstIndex(of: word) {
            duple += 1
            second.remove(at: index)
        }
    }
    
    let sum = firstCount + secondCount - duple
    
    if sum == 0 {
        return 65536
    } else {
        return Int((Double(duple)/Double(sum)) * 65536)
    }
}