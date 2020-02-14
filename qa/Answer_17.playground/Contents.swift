import UIKit
import PlaygroundSupport

class Foo {}
var a = Foo()
var b = Foo()
var c = b
print(a === b, b === c)
