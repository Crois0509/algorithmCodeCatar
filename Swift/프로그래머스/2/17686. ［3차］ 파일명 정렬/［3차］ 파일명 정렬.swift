func solution(_ files:[String]) -> [String] {
    var parsed: [(head: String, number: Int, index: Int, original: String)] = []
    
    for (idx, file) in files.enumerated() {
        var head = ""
        var number = ""
        var i = file.startIndex
        
        // HEAD
        while i < file.endIndex, !file[i].isNumber {
            head.append(file[i])
            i = file.index(after: i)
        }
        
        // NUMBER (최대 5자리)
        var count = 0
        while i < file.endIndex, file[i].isNumber, count < 5 {
            number.append(file[i])
            i = file.index(after: i)
            count += 1
        }
        
        parsed.append((
            head: head.lowercased(),
            number: Int(number)!,
            index: idx,
            original: file
        ))
    }
    
    return parsed
        .sorted {
            if $0.head != $1.head {
                return $0.head < $1.head
            }
            if $0.number != $1.number {
                return $0.number < $1.number
            }
            return $0.index < $1.index   // 안정 정렬
        }
        .map { $0.original }
}
