import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var playList: [String: [(i: Int, play: Int)]] = [:]
    var genreList: [String:Int] = [:]
    var answer: [Int] = []
    
    for i in genres.indices {
        let genre = genres[i]
        let play = plays[i]
        
        playList[genre, default: []].append((i, play))
        genreList[genre, default: 0] += play
        
        playList[genre]?.sort(by: { $0.play > $1.play })
    }
    
    for album in genreList.sorted(by: { $0.value > $1.value }) {
        let list = playList[album.key]!
        
        if list.count < 2 {
            answer.append(list.first!.i)
        } else {
            answer.append(contentsOf: [list[0].i, list[1].i])
        }
    }
    
    return answer
}