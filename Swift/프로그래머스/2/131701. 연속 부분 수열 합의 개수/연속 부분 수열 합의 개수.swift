import Foundation

func solution(_ elements: [Int]) -> Int {
    var result = Set<Int>()
    let n = elements.count
    let doubled = elements + elements

    for length in 1...n {
        var sum = doubled[0..<length].reduce(0, +)
        result.insert(sum)

        for start in 1..<n {
            sum = sum - doubled[start - 1] + doubled[start + length - 1]
            result.insert(sum)
        }
    }

    return result.count
}
