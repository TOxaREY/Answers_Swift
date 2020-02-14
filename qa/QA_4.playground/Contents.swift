import UIKit
import PlaygroundSupport

struct Record {
    func update() {
    }
}
var id = 10


func retrieveData(for id: Int, completion: @escaping (Record) -> ()) {
    
}
retrieveData(for: id) {
    self.update
}

//retrieveData(for: id) {
//    self.update(with: $0)
//}
//
//retrieveData(for: id, completion: {
//    self.update(with: $0)
//})
    
