import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    let coverage = 2 * w + 1
    var position = 1
    
    for s in stations {
        let left = s - w
        
        if position < left {
            let gap = left - position
            answer += (gap + coverage - 1) / coverage
        }
        
        position = s + w + 1
    }
    
    if position <= n {
        let gap = n - position + 1
        answer += (gap + coverage - 1) / coverage
    }
    
    return answer
}