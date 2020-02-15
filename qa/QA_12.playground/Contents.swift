import UIKit
import PlaygroundSupport

// Initializer omitted
class ViewController: UIViewController {
    private let id: Int = 0
    deinit {
        print("#\(id) deallocated")
    }
}

let vc = UINavigationController()
vc.pushViewController(ViewController(id: 1), animated: false)
vc.pushViewController(ViewController(id: 2), animated: false)
vc.present(ViewController(id: 3), animated: false) {
    vc.dismiss(animated: false) {
        vc.popToRootViewController(animated: false)
    }
}
