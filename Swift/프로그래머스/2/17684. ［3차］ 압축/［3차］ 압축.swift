func solution(_ msg:String) -> [Int] {
    var dict: [String: Int] = [:]
    var result: [Int] = []
    
    // A~Z 초기 사전 설정
    for i in 0..<26 {
        let char = String(UnicodeScalar(65 + i)!)
        dict[char] = i + 1
    }
    
    var msgArray = Array(msg)
    var index = 0
    var nextCode = 27
    
    while index < msgArray.count {
        var word = String(msgArray[index])
        var next = index + 1
        
        // 가장 긴 문자열 탐색
        while next <= msgArray.count {
            if let _ = dict[word] {
                if next == msgArray.count { break }
                word += String(msgArray[next])
                next += 1
            } else {
                word.removeLast()
                break
            }
        }
        
        // 사전 인덱스 추가
        result.append(dict[word]!)
        
        // 사전에 신규 문자열 추가
        if next <= msgArray.count {
            let newWord = word + String(msgArray[next - 1])
            if dict[newWord] == nil {
                dict[newWord] = nextCode
                nextCode += 1
            }
        }
        
        index += word.count
    }
    
    return result
}
