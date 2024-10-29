import Foundation

func solution(_ age:Int) -> Int {
    if (0...120).contains(age) == false {
        return 0
    } else {
        let teacherAge = 2022 - age + 1
    
        return teacherAge
    }
}