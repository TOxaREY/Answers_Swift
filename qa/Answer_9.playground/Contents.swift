import UIKit
import PlaygroundSupport

class MyTableViewDelegate: NSObject, UITableViewDelegate {
    // Assume a reasonable implementation of the delegate methods
}

class MyTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = MyTableViewDelegate()
        tableView.reloadData()
    }
}
