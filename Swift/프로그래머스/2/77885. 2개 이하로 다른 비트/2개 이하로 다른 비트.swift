import Foundation

func solution(_ numbers: [Int64]) -> [Int64] {
    return numbers.map { num in
        if num % 2 == 0 {
            return num + 1
        } else {
            var bit: Int64 = 1
            while (num & bit) != 0 {
                bit <<= 1
            }
            return num + bit - (bit >> 1)
        }
    }
}