func solution(_ strings:[String], _ n:Int) -> [String] {
    var answer: [String] = []
    
    let result = strings.sorted(by: {
        let index = $0.index($0.startIndex, offsetBy: n)
        
        if $0[index] == $1[index] {
            return $0 < $1
        }
        return $0[index] < $1[index]
    })
    
    answer = result
    
    return answer
}