import Foundation

struct File {
    let head: String
    let number: String
    let tail: String
    let index: Int
}

func solution(_ files:[String]) -> [String] {
    var sortedFiles: [File] = []
    
    for (i, file) in files.enumerated() {
        var head = ""
        var num = ""
        var tail = ""
        
        for char in file {
            let text = String(char)
            
            if char.isNumber {
                if num.count >= 5 || !tail.isEmpty {
                    tail += text
                    
                } else {
                    num += text
                }
                
            } else if !char.isNumber {
                if !num.isEmpty {
                    tail += text
                    
                } else {
                    head += text
                }
            }
        }
        
        let newFile = File(head: head, number: num, tail: tail, index: i)
        sortedFiles.append(newFile)
    }
    
    return sortedFiles.sorted(by: {
        if $0.head.lowercased() != $1.head.lowercased() {
            return $0.head.lowercased() < $1.head.lowercased()
            
        } else if let first = Int($0.number), let second = Int($1.number) {
            return first < second
            
        } else {
            return $0.index < $1.index
        }
    })
    .map {
        "\($0.head)\($0.number)\($0.tail)"
    }
}