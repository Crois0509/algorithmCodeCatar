import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = 0
    var havingMoney = money
    
    for i in 1...count {
        havingMoney -= (price * i)
    }
    answer = Int64(havingMoney)
    answer = answer > 0 ? 0 : answer * -1
    
    return answer
}