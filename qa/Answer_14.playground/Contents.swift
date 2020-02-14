import UIKit
import PlaygroundSupport

class View: UIView {
    func updateProgressBar() {
        var boxFrame = CGRect(x: 10, y: 10, width: 100, height: 100)
        for _ in 0..<10 {
            let box = UIView(frame: boxFrame)
            box.backgroundColor = .blue
            addSubview(box)

            // What goes here?
            
            Thread.sleep(forTimeInterval: 2)
            boxFrame.origin.x += boxFrame.width
        }
    }
}


draw(bounds)


layer.draw(in: UIGraphicsGetCurrentContext()!)


setNeedsDispay()
