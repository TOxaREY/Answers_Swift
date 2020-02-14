import UIKit
import PlaygroundSupport

class MyObject: NSObject {
    private var timer: Timer!
    
    override init() {
        super.init()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.update()
        }
    }
    
    deinit {
        timer.invalidate()
    }
    
    func update() {
        // Some update code
    }
}
