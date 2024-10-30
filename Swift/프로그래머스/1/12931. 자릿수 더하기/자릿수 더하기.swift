import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var num: Int = n
    
    while num > 0 {
        answer += num % 10
        num /= 10
    }

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("\(answer)")
    
    return answer
}