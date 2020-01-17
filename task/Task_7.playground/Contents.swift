import Foundation

func getTotalTime(heroes: [Int], n: Int) -> Int {
    var total = 0
    var heroesArr = heroes
    var arrN = [Int]()
    if n >= heroes.count {
        return heroes.max()!
    }
    if n == 1 {
        return heroes.reduce(0){$0 + $1}
    }
    for i in 0...n - 1 {
        arrN.append(heroes[i])
        heroesArr[i] = 0
    }
    heroesArr = heroesArr.filter{$0 != 0}
    while arrN.count != 1 {
        arrN = arrN.sorted()
        total += arrN[0]
        arrN = arrN.map{$0 - arrN[0]}
        arrN.removeFirst()
        if heroesArr.count != 0 {
            arrN.append(heroesArr[0])
            heroesArr[0] = 0
            heroesArr = heroesArr.filter{$0 != 0}
        }
    }
    total += arrN[0]
    return total
}
let heroes1 = [6, 2, 9]
getTotalTime(heroes: heroes1, n: 1) //17
let heroes2 = [11, 2, 3, 4]
getTotalTime(heroes: heroes2, n: 2) //11
let heroes3 = [3, 5, 10]
getTotalTime(heroes: heroes3, n: 2) //13

