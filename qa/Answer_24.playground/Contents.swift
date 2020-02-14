import UIKit
import PlaygroundSupport


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let count = self.gameResults == nil?0:self.gameResults?.count
    return count!
}
