import UIKit
import PlaygroundSupport

class Foo {
    var callbacks: [() -> Void] = []
    
    init() {
                callbacks.append(bar)
        //        callbacks.append(bar.self)
//        callbacks.append { [unowned self] in
//            self.bar()
//        }
//        callbacks.append { [weak self] in
//        self?.bar()
//        }
    }
    
    func bar() {
        print("bar")
    }
    
    deinit {
        print("deinit")
    }
}

var foo: Foo? = Foo()
foo?.callbacks[0]() //bar
print(foo) //Optional(__lldb_expr_25.Foo)
//Ссылка на объект в ячейке памяти
foo = nil
print(foo) //nil
//Объект nil, но deinit не написал!!!


/*
 () -> Void это замыкание typealias Void = () т.е. можно записать () -> ()
 weak - когда замыкание может быть, а может и не быть
 unowned - когда замыкание точно есть
 */


/*
 □ Да, и его можно сломать, заменив append(bar) на append(self.bar).
 
 ■ Да, и его можно сломать, заменив callbacks.append(bar) на:
 
 callbacks.append { [unowned self] in
 self.bar()
 }
 
 ■ Да, и его можно сломать, заменив callbacks.append(bar) на:
 
 callbacks.append { [weak self] in
 self?.bar()
 }
 
 □ Код даже не скомпилируется, потому что синтаксис append(bar) недопустим.
 
 □ Здесь нет цикла сохранения.
 */

