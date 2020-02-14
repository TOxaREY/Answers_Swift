import UIKit
import PlaygroundSupport

extension Collection { // Line 1
    func starts(with elem: Element) -> Bool {
        return self.first == elem // Line 2
    }
}
[1, 2, 3].starts(with: 1)
