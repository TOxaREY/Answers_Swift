//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        func updateProgressBar() {
            var boxFrame = CGRect(x: 10, y: 10, width: 35, height: 50)
            
            DispatchQueue.global().async {
                for _ in 0..<10 {
                    DispatchQueue.main.async {
                        let box = UIView(frame: boxFrame)
                        box.backgroundColor = .blue
                        view.addSubview(box)
                        
                        // What goes here?
                        
                        boxFrame.origin.x += boxFrame.width
                    }
                    sleep(2)
                }
            }
        }
        updateProgressBar()
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
/*
 DispatchQueue.asyncAfter не подходит, так как задачи в очереди будут выполняться
 асинхронно(параллельно) и цикл пробежит мгновенно.
 Вначале мы поставим цикл в асинхроную глобальную очередь, чтобы не морозить UI,
 а отображение на UI поставим в основной поток, оставив sleep в глобальной очереди внутри цикла.
 */


/*
 draw(_:) - рисует изображение получателя в переданном прямоугольнике.
 UIGraphicsGetCurrentContext - возвращает текущий графический контекст.
 setNeedsDisplay() - помечает весь прямоугольник границ
 получателя как подлежащий перерисовке.
 Thread.sleep(forTimeInterval:) - обработка цикла выполнения не происходит,
 пока поток заблокирован. Пользовательский интерфейс не отвечает в течение этого времени(плохо).
 */



/*
 ○   draw(bounds)
 
 ○   layer.draw(in: UIGraphicsGetCurrentContext()!)
 
 ○   setNeedsDisplay()
 
 ●   Этот подход неверен. Это должно быть реализовано другим способом,
 например, с DispatchQueue.asyncAfter.
 */

