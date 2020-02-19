//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyTableController : UITableViewController {
    
    var gameResults:[Int]?
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue
        self.view = view
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let count = self.gameResults = nil?0:self.gameResults?.count
        let count = self.gameResults?.count ?? 0
//        return count!
        return count
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyTableController()

/*
 let count = self.gameResults = nil?0:self.gameResults?.count
 тут пытались развернуть Option с помощью nil-coalescing
 let count уже проверен поэтому ! не нужен
 */
