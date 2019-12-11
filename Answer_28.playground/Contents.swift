import Foundation

func maxdiff(arr:[Int]) -> Int {
    var diff = 0
    for i in 0...arr.count - 2 {
        if abs(arr[i] - arr[i + 1]) > diff {
            diff = abs(arr[i] - arr[i + 1])
        }
    }
    return diff
}

var arr = [1, 1, 1, 1]
maxdiff(arr: arr) //0

arr = [-1, 4, 10, 3, -2]
maxdiff(arr: arr) //7

arr = [10, 11, 13]
maxdiff(arr: arr) //2

arr = [-2, -2, -2, -2, -2]
maxdiff(arr: arr) //0

arr = [-1, 1, -3, -4]
maxdiff(arr: arr) //4
