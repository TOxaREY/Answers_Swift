import UIKit
import PlaygroundSupport

//Структуры для парсера
struct Person: Codable {
    let name, age, company: String
}

struct People: Codable {
    let people: [Person]
}
//


if let url = URL(string: "https://rawcdn.githack.com/TOxaREY/Answers_Swift/3a27a32977d3d51092e2cf374e086dd5b719a982/qa/QA_22.json") {
    let request = URLRequest(url: url)
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        guard let data = data else { return }
        do {
            //Сам парсер
            let jsonData = try? JSONDecoder().decode([People].self, from: data)
            //
            print(jsonData![0].people[1].name) //Oleg
            print(jsonData![0].people[0].age) //22
            print(jsonData![0].people[0].company) //none
        }
    }
    task.resume()
}

