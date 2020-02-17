//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class ViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let greetingLabel = UILabel()
        greetingLabel.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        greetingLabel.textColor = .black
        
        var userName: String? {
            didSet {
                greetingLabel.text = userName
            }
        }
        
        userName = "Hello, Arthur!"
        
        view.addSubview(greetingLabel)
        self.view = view
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()



/*
 Идиоматический способ - это с помощью конструкций самого языка.
 KVO не очень хорош в чистом коде Swift, потому что он опирается на среду выполнения
 Objective C - вам нужно использовать @objc классы, которые наследуются NSObject,
 а затем пометить каждое из ваших свойств с помощью @objc dynamic.
 У NotificationCenter часть среды выполнения Objective C, поэтому для вызова
 вашей функции вам нужно добавить @objc атрибут.
 Решение Swift - это наблюдатели свойств, которые позволяют вам выполнять код всякий раз,
 когда свойство изменяется. Чтобы заставить их работать, мы используем либо didSet для
 выполнения кода, когда свойство только что было установлено, либо willSet для выполнения
 кода до того, как свойство было установлено.
 */



/*
○ Использование наблюдения значения ключа (Key-Value Observing) (KVO) на контроллере представления.

○ Использование наблюдения значения ключа (KVO) в свойстве userName.

○ Подписка на уведомление от NSNotificationCenter.

○ Переопределение установщика (setter) userName.

● Использование триггера didSet для свойства userName.
*/
