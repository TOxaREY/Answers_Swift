import UIKit
import PlaygroundSupport

class OnlyOneST {
    class var sharedlnstance:OnlyOneST {
        struct Static {
            var onceToken: dispatch_once_t = 0
            var instance: OnlyOneST? = nil
        }
        dispatch_once (&Static.onceToken) {
            Static.instance = OnlyOneST()
        }
        return Static.instance!
    }
}

