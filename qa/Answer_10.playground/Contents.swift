import UIKit
import PlaygroundSupport

class Foo {
    var callbacks: [() -> Void] = []
    
    init() {
        callbacks.append(bar)
    }
    
    func bar() {
        
    }
}

callbacks.append { [unowned self] in
    self.bar()
}

callbacks.append { [weak self] in
    self?.bar()
}
