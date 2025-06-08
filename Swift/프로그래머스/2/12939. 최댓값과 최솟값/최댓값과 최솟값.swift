func solution(_ s:String) -> String {
    let str = s.split(separator: " ").map { Int($0) ?? 0 }
    return "\(str.min()!) \(str.max()!)"
}