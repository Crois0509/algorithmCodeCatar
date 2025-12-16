import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var index: Int = 0
    var answer: Int = 0
    var dic: [Character: Int] = [:]
    
    for (i, element) in skill.enumerated() {
        let beforIndex = i - 1
        dic[element] = beforIndex
    }
    
    while index < skill_trees.count {
        
        let skillTree = skill_trees[index]
        var skills = Array(repeating: false, count: skill.count)
        
        for (i, char) in skillTree.enumerated() {
            
            if let beforIndex = dic[char] {
                if beforIndex < 0 {
                    skills[0] = true
                    
                } else if skills[beforIndex] == true {
                    skills[beforIndex + 1] = true
                    
                } else {
                    break
                }
            }
            
            if i == (skillTree.count - 1) {
                answer += 1
            }
        }
        
        index += 1
    }
    
    return answer
}