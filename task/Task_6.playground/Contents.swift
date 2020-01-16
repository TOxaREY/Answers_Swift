import Foundation

func getNumberOfBoats(dwarfs: [Int], limit: Int) -> Int {
    var barrel = 0
    var lim = limit
    var twoLim = 0
    var dw = dwarfs.sorted()
    dw = dw.reversed()
    if limit >= dwarfs.reduce(0, +) {
        return 1
    }
    while dw.count != 0 {
        if twoLim == 2 {
            lim = limit
            twoLim = 0
        }
        for i in 0...dw.count - 1 {
            if dw[i] == limit {
                barrel += 1
                dw[i] = 0
                break
            }
            if dw[i] == lim {
                dw[i] = 0
                lim = limit
                twoLim += 1
                break
            }
            if lim > dw[i] {
                if lim == limit {
                    barrel += 1
                }
                lim = lim - dw[i]
                twoLim += 1
                dw[i] = 0
                break
            }
            if i == dw.count - 1 {
                if lim != limit {
                    lim = limit
                }
            }
        }
        dw = dw.filter{$0 != 0}
    }
    return barrel
}

let dwarfs = [3, 2, 2, 1]
let limit = 3
getNumberOfBoats(dwarfs: dwarfs, limit: limit)
