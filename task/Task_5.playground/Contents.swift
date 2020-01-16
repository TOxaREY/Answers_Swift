import Foundation

func brokenDevice(x: Int, y: Int) -> Int {
    var ans = 0
    var yy = y
    var xx = x
    if x >= y {
        if x >= 0 && y >= 0 {
            return x - y
        } else if x > y && y < 0 {
            if x >= 0 {
                ans = x
                xx = 1
                yy = abs(y)
            } else {
                yy = abs(y)
                xx = abs(x)
            }
        } else {
            return 0
        }
    } else {
        if x >= 0 && y <= 0 || x <= 0 && y <= 0 || x <= 0 && y >= 0 {
            return 0
        }
    }
    while xx != yy {
        if yy % 2 != 0 {
            yy += 1
            ans += 1
        }
        yy /= 2
        ans += 1
        while yy < xx {
            if x < y {
                yy += 1
            } else {
                yy -= 1
            }
            ans += 1
        }
    }
    return ans
}

brokenDevice(x:2, y:3) //2
brokenDevice(x:5, y:8) //2
brokenDevice(x:0, y:100) //0
brokenDevice(x:100, y:0) //100
brokenDevice(x:100, y:100) //0
brokenDevice(x:0, y:-100) //10
brokenDevice(x:-100, y:0) //0
brokenDevice(x:-100, y:-100) //0
brokenDevice(x:100, y:-100) //110
brokenDevice(x:-100, y:100) //0
brokenDevice(x:0, y:0) //0
