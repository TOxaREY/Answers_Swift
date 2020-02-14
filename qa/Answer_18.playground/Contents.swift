import UIKit
import PlaygroundSupport

func downloadData(completion: (Data?) -> Void) {
    var downloadedData: Data?
    let url = URL(string: "https://google.com")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        downloadedData = data
    }
    task.resume()
    completion(downloadedData)
}
