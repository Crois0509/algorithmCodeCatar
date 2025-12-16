import Foundation

func solution(_ skill: String, _ skill_trees: [String]) -> Int {
    let skillArray = Array(skill)
    var answer = 0

    for tree in skill_trees {
        var index = 0
        var isValid = true

        for ch in tree {
            if let pos = skillArray.firstIndex(of: ch) {
                if pos != index {
                    isValid = false
                    break
                }
                index += 1
            }
        }

        if isValid {
            answer += 1
        }
    }

    return answer
}
