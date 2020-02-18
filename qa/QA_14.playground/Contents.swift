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
            for _ in 0..<10 {
                let box = UIView(frame: boxFrame)
                box.backgroundColor = .blue
                view.addSubview(box)
                
                // What goes here?
                
                boxFrame.origin.x += boxFrame.width
                print("qqq")
            }
        }
        updateProgressBar()
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


/*
 draw(_:) - рисует изображение получателя в переданном прямоугольнике.
 UIGraphicsGetCurrentContext - возвращает текущий графический контекст.
 setNeedsDisplay() - помечает весь прямоугольник границ
 получателя как подлежащий перерисовке.
 sleep(forTimeInterval:) - обработка цикла выполнения не происходит,
 пока поток заблокирован. Пользовательский интерфейс не отвечает в течение этого времени(плохо).
 */



/*
 ○   draw(bounds)
 
 ○   layer.draw(in: UIGraphicsGetCurrentContext()!)
 
 ○   setNeedsDisplay()
 
 ●   Этот подход неверен. Это должно быть реализовано другим способом,
 например, с DispatchQueue.asyncAfter.
 */

