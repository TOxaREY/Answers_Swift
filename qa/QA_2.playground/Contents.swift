//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
//Вынесем вьювер чтобы можно было обратиться к нему после отображения
    let wrapped = UIView()
    override func loadView() {
//Здесь нужен вьювер чтобы отобразить наш container
        let view = UIView()
        view.backgroundColor = .white

        let container = UIView()
//Добавим цвета для наглядности
        container.backgroundColor = .green
        wrapped.backgroundColor = .red
        
        container.addSubview(wrapped)
        
        container.translatesAutoresizingMaskIntoConstraints = false
        wrapped.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.widthAnchor.constraint(equalToConstant: 100),
            container.heightAnchor.constraint(equalToConstant: 200),
            wrapped.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            wrapped.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            wrapped.widthAnchor.constraint(equalToConstant: 50),
            wrapped.heightAnchor.constraint(equalToConstant: 50)
        ])
        view.addSubview(container)
        self.view = view
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(wrapped.frame)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
//Смысл ответа в том что The default coordinate system in UIKit has its origin in the top-left corner and has axes that extend down and to the right from the origin point, т.е. начало координат в левом верхнем углу.
// - (50, 100, 50, 50)
// + (25, 75, 50, 50)
// - (25, 125, 50, 50)
// - (50, 50, 50, 50)

