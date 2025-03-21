import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var answer: Int = 0
    var cola: Int = n
    
    while cola >= a {
        let newCola = (cola / a) * b
        let stackCola = cola % a
        
        answer += newCola
        cola = newCola + stackCola
    }
    
    return answer
}