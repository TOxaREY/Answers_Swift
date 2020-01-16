import Foundation

func fourLetters(sentence: String) -> Int {
    let namesArr = sentence.components(separatedBy: " ")
    var men = 0
    for i in namesArr {
        if i.count == 4 {
            men += 1
        }
    }
    return men
}

let names = "Tror Gvigris Deriana Nori"
fourLetters(sentence: names) //2
