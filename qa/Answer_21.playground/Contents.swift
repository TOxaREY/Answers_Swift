import UIKit
import PlaygroundSupport

class FirstViewController: UIViewController {
    func createSecondViewController() {
        let SecondViewController = SecondViewController()
        SecondViewController.view.backroundColor = .red
    }
}
