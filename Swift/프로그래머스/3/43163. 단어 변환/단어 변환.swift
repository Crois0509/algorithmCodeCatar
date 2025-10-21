import Foundation

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    guard words.contains(target) else { return 0 } // target이 없을 경우 0 반환 후 종료
    guard begin != target else { return 0 }
    
    var chars: Set<String> = []
    
    var result: String = begin
    
    var index: Int = 0
    
    while result != target {
        for word in words {
            let currentWord = zip(result, target).filter { $0 != $1 }.count == 1
            guard !currentWord else { return index + 1 }
            
            let check = zip(result, word).filter { $0 != $1 }.count == 1
            
            if check && !chars.contains(word) {
                chars.insert(word)
                result = word
                index += 1
            } else {
                continue
            }
        }
    }
    
    return index
}
