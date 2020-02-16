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


/*
 □ В этом нет ничего плохого, поэтому этот код будет работать, как и ожидалось.

 □ API URLSession является асинхронным, поэтому мы должны вызывать окончательное завершение после завершения задачи с данными.

 □ Задача данных возобновляется (resumed) автоматически при ее создании, поэтому вызов возобновления (resume) вручную приведет к тому, что запрос будет отправлен дважды.

 □ Принудительное развертывание (orce-unwrap) после инициализатора URL небезопасно.

 □ Нам нужно проверить, что полученные данные на nil, чтобы предотвратить возможный сбой.

 □ Забыли инициализировать downloadedData, поэтому результат может быть неопределенным.

 □ Аргумент закрытия (completion) замыкания должен быть помечен как @escaping.■
 */
