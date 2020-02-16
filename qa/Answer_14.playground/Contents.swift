import UIKit
import PlaygroundSupport

//class View: UIView {
//    func updateProgressBar() {
        let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let boxFrame = CGRect(x: 10, y: 10, width: 100, height: 100)
        let box = UIView(frame: boxFrame)
        box.backgroundColor = .blue
        container.addSubview(box)
//        let box = UIView(frame: box)
//        box.backgroundColor = .blue
//        addSubview(box)
//        for _ in 0..<10 {
//            let box = UIView(frame: boxFrame)
//            box.backgroundColor = .blue
//            addSubview(box)
//
//            // What goes here?
//
////            Thread.sleep(forTimeInterval: 2)
////            boxFrame.origin.x += boxFrame.width
//        }
//    }
//}
//var view = View()

PlaygroundPage.current.liveView = container
//
//draw(bounds)
//
//
//layer.draw(in: UIGraphicsGetCurrentContext()!)
//
//
//setNeedsDispay()
