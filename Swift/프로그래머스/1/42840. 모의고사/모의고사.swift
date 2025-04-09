import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    func checkGrade(_ input: [Int]) -> Int {
        var grade = 0
        
        if input.count >= answers.count {
            for (index, answer) in answers.enumerated() where input[index] == answer {
                grade += 1
            }
            
            return grade
            
        } else {
            for (index, answer) in answers.enumerated() {
                if index >= input.count {
                    let x = index / input.count
                    let i = index - (input.count * x)
                    
                    if input[i] == answer {
                        grade += 1
                    }
                    
                } else if input[index] == answer {
                    grade += 1
                }
            }
            
            return grade
        }
    }
    
    var answer = [Int]()
    let grades = [checkGrade(first), checkGrade(second), checkGrade(third)]
    let top = grades.max()!
    
    for (index, grade) in grades.enumerated() where grade == top {
        answer.append(index + 1)
    }
    
    return answer
}