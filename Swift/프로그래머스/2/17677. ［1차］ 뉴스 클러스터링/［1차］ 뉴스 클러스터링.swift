func solution(_ str1:String, _ str2:String) -> Int {
    
    func makeMultiSet(_ s: String) -> [String: Int] {
        let arr = Array(s.lowercased())
        var dict: [String: Int] = [:]

        for i in 0..<arr.count-1 {
            let a = arr[i]
            let b = arr[i+1]

            // 두 문자 모두 알파벳인지 체크
            if a.isLetter && b.isLetter {
                let key = "\(a)\(b)"
                dict[key, default: 0] += 1
            }
        }
        return dict
    }

    let A = makeMultiSet(str1)
    let B = makeMultiSet(str2)

    if A.isEmpty && B.isEmpty { return 65536 }

    // 교집합
    var inter = 0
    for (key, value) in A {
        if let bValue = B[key] {
            inter += min(value, bValue)
        }
    }

    // 합집합
    var union = 0
    var keys = Set(A.keys).union(B.keys)
    for key in keys {
        let aValue = A[key] ?? 0
        let bValue = B[key] ?? 0
        union += max(aValue, bValue)
    }

    return Int(Double(inter) / Double(union) * 65536)
}
