import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var played = [String: Int]()
    var music = [String: [(n: Int, play: Int)]]()
    var answer = [Int]()
    
    for n in 0..<genres.count {
        let genre = genres[n]
        let play = plays[n]
        
        played[genre, default: 0] += play
        music[genre, default: []].append((n, play))
    }
    
    for (genre, _) in played.sorted(by: { $0.value > $1.value }) {
        let albums = music[genre]!.sorted{
            if $0.play == $1.play {
                return $0.n < $1.n
            }
            return $0.play > $1.play
        }.prefix(2)
        
        for album in albums {
            answer.append(album.n)
        }
    }
    
    return answer
}