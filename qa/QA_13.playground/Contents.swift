import Foundation
import PlaygroundSupport

extension Notification.Name {
    static let downloadDidBegin = Notification.Name("downloadDidBegin")
}


class Observer: NSObject {
    override init() {
        super.init()
        
        NotificationCenter.default.addObserver(self, selector: #selector(downloadDidBegin), name: .downloadDidBegin, object: nil)
    }
    @objc func downloadDidBegin(_ note: Notification) {
        print("observer")
    }
}

DispatchQueue.global(qos: .background).async {
    Observer()
    DispatchQueue.main.async {
        print("before")
        NotificationCenter.default.post(name: .downloadDidBegin, object: nil, userInfo: nil)
        print("after")
    }
}



/*
 Если всё запустить в бэкграунде и потом принты в майн, почти
 всё время before after, но иногда before observer after!!!
 Если запустить инициализацию класса и принты в одной очереди, то before observer after.
 Вот эта фраза"Когда-то в прошлом Обсервер создавался в произвольной
 очереди (не обязательно в главной очереди). Обсервер все еще существует." смущает.
 Последним observer никогда не был. Я проверил много вариантов очередей.
 Может всё так из-за Playground'а и его особенностей.
 В общем я думаю, что из представленных вариантов, если учесть что обсервер "всё еще существует",
 можно предположить что из любой очереди пост достигнет его, поэтому первый вариант.
 */


/*
 ● "before", "observer", "after"
 
 
 ○ "before", "after", "observer"
 
 
 ○ Порядок не определен, и выходные данные могут быть повреждены
 (corrupted) в зависимости от того, на какой очереди запущен post().
 
 ○ Порядок не определен, но это будет либо "before", "observer", "after" или "before",
 "after", "observer", в зависимости от того, какая очередь post() запущена.
 */
