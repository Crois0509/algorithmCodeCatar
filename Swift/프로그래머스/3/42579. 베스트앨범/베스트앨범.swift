import Foundation

struct Album {
    let index: Int
    let play: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var dic = [String:[Album]]()
    var answer: [Int] = []
    
    for i in 0..<genres.count {
        let album = Album(index: i, play: plays[i])
        dic[genres[i], default: []].append(album)
    }
    
    let sorted = dic.sorted(by: {
        $0.value.reduce(0) { $0 + $1.play } > $1.value.reduce(0) { $0 + $1.play }
    })
    
    for album in sorted {
        let top = Array(album.value.sorted(by: { $0.play > $1.play }).prefix(2))
        let result = top.map { $0.index }
        answer.append(contentsOf: result)
    }
    
    return answer
}