import Foundation

func solution(_ clothes: [[String]]) -> Int {
    // 1. 종류별로 묶어서 개수만 파악합니다.
    let grouped = Dictionary(grouping: clothes) { $0[1] }

    // 2. 각 종류별 (개수 + 1)을 모두 곱한 뒤 1을 뺍니다.
    return grouped.values.reduce(1) { $0 * ($1.count + 1) } - 1
}