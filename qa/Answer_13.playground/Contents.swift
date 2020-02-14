import UIKit
import PlaygroundSupport

class Observer: NSObject {
    override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(downloadDidBegin), name: .downloadDidBegin, object: nil)
    }
    @objc func downloadDidBegin(_ note: Notification) {
        print("observer")
    }
}

print("before")
NotificationCenter.default.post(name: .downloadDidBegin, object: nil, userInfo: nil)
print("after")
