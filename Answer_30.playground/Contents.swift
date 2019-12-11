import Foundation

func pairDifferenceCount(arr: [Int], k: Int) -> Int {
    var array = arr
    var count = 0
    var max = array.max()!
    while max >= k {
        if max == k && array.min()! != 0 {
            break
        }
        for i in 0...array.count - 1 {
            if array[i] == (max - k) {
                count += 1
                for j in 0...array.count - 1 {
                    if array[j] == max {
                        array[j] = -1
                    }
                }
                array = array.filter { $0 != -1 }
                if array.count == 0 {
                    max = -1
                    break
                }
                max = array.max()!
                break
            }
        }
    }
    return count
}

var arr = [1, 5, 3, 4, 2]
pairDifferenceCount(arr: arr, k: 3) //2

arr = [8, 12, 16, 4, 0, 20]
pairDifferenceCount(arr: arr, k: 4) //5

arr = [1, 4, 3, 0, 2, 5, 7, 8, 9, 6]
pairDifferenceCount(arr: arr, k: 3) //7

arr = [4, 4, 4, 2, 2]
pairDifferenceCount(arr: arr, k: 0) //2
