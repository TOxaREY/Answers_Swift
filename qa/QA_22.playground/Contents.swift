import UIKit
import PlaygroundSupport

struct Person: Codable {
    let name, age, company: String
}

struct People: Codable {
    let people: [Person]
}


if let url = Bundle.main.url(forResource: "/Users/reynikovanton/Desktop/APP/github/Answers_Swift/qa/QA_22", withExtension: "json") {
    do {
        let data = try Data(contentsOf: url)
        let jsonData = try? JSONDecoder().decode(People.self, from: data)
        print(jsonData!.people[0].name)
    } catch {
        print("error: \(error)")
    }
}

