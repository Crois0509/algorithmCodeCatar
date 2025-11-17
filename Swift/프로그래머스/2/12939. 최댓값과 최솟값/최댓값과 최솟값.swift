func solution(_ s:String) -> String {
    let split = s.split(separator: " ").compactMap { Int($0) }
    let max = split.max() ?? 0
    let min = split.min() ?? 0
    return "\(min) \(max)"
}