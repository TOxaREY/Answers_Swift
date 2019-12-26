import Foundation

func sequences(n: Int) -> [String] {
    var tmpN = n
    var arr = [String]()
    var tmpArr = [String]()
    if n == 0 {
        return arr
    } else {
        while tmpN != 0 {
            for i in 1...tmpN {
                tmpArr.append(String(i))
            }
            if tmpN % 2 == 0 {
                tmpArr = tmpArr.reversed()
            }
            arr.append(tmpArr.joined(separator: "-"))
            tmpArr = []
            tmpN -= 1
        }
        arr = arr.reversed()
        return arr
    }
}
sequences(n: 0) //[]
sequences(n: 4) //["1", "2-1", "1-2-3", "4-3-2-1"]
sequences(n: 10) //["1", "2-1", "1-2-3", "4-3-2-1", "1-2-3-4-5", "6-5-4-3-2-1", "1-2-3-4-5-6-7", "8-7-6-5-4-3-2-1", "1-2-3-4-5-6-7-8-9", "10-9-8-7-6-5-4-3-2-1"]
