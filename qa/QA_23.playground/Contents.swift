import UIKit
import PlaygroundSupport

/*
 Потоки не бывают синхронные и асинхронные.
 Потоки можно создавать и потом на них блокировать задачи
 взависимости от условий. Думаю здесь вопрос о очередях.
 */

1 //Создатим 4 очереди. 3 ConcurrentQueue(параллельных) и 1 SerialQueue(последовательную)
let async1 = DispatchQueue(label: "async1")
let async2 = DispatchQueue(label: "async2")
let async3 = DispatchQueue(label: "async3")
let sync = DispatchQueue(label: "sync")

2 //Создадим группу асинхронных очередей
let asyncsGroup = DispatchGroup()

3 //Добавим туда 3 асинхронных очереди
asyncsGroup.enter()
async1.async {
    sleep(3)
    print("async1")
    4 //Выход из группы после выполнения задачи
    asyncsGroup.leave()
}

asyncsGroup.enter()
async2.async {
    print("async2")
    asyncsGroup.leave()
}

asyncsGroup.enter()
async3.async {
    print("async3")
    asyncsGroup.leave()
}

5 //Notify ставит в известность очередь (в нашем случае sync),
  //что все задачи группы выполнены и запускает последнюю задачу
  //в указаной нами очереди (sync).
asyncsGroup.notify(queue: sync) {
    print("sync")
}
