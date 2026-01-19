import Foundation

func solution(_ record:[String]) -> [String] {
    
    let enterMessage = "님이 들어왔습니다."
    let leaveMessage = "님이 나갔습니다."
    
    var userDic: [String:String] = [:]
    
    for user in record {
        let userData = user.split(separator: " ").map { String($0) }
        let order = userData[0]
        let userId = userData[1]
        
        if order != "Leave" {
            let nickName = userData[2]
            userDic[userId, default: ""] = nickName
        }
    }
    
    var answer: [String] = []
    
    for userRecord in record {
        let userData = userRecord.split(separator: " ").map { String($0) }
        let order = userData[0]
        let userId = userData[1]
        
        if order == "Enter" {
            guard let nickName = userDic[userId] else { continue }
            answer.append(nickName + enterMessage)
        } else if order == "Leave" {
            guard let nickName = userDic[userId] else { continue }
            answer.append(nickName + leaveMessage)
        } else {
            continue
        }
    }
    
    return answer
}