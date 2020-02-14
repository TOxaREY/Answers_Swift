import UIKit
import PlaygroundSupport

class C {
    let a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

let clet = C(a: 0, b: 0)
var cvar = C(a: 0, b: 0)


clet.b = 1


cvar = C(a: 1, b: 1)


cvar.b = 1


clet = C(a: 1, b: 1)


cvar.a


clet.a = 1
