import UIKit
import PlaygroundSupport

class MyObject: NSObject {
    private var timer: Timer!
    
    override init() {
        super.init()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.update()
        }
//        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
//            self?.update()
//        }
    }
    
    deinit {
        timer.invalidate()
        print("deinitObj")
    }
    
    func update() {
        // Some update code
        print("update")
    }
}
var myObj: MyObject? = MyObject()
print(myObj) //Optional(<__lldb_expr_5.MyObject: 0x600000acc3a0>)
//Ссылка на объект в ячейке памяти

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    myObj = nil
    print(myObj) //nil
    //Обнуляем ссылку на объект, но таймер продолжает работу!!!
}

/*
 Вы используете свойство self для ссылки на текущий экземпляр,
 внутри методов этого экземпляра. Self ссылается на update экземпляра.
 Объект не освободиться так как тут цикл сохранения.
 У нас класс владеет замыканием через timer переменную.
 Если не объявить self как weak или unowned, замыкание
 также будет self создавать сильный ссылочный цикл.
 */

/*
 ○ В замыкании «self» относится к объекту таймера, а не к вызывающему объекту. self.update() вызовет исключение «нет такого метода» во время выполнения из-за взаимодействия с средой выполнения ObjC.
 
 ○ Это не скомпилируется, потому что блок Timer не может ссылаться на себя (self) таким образом.
 
 ○ Если объект освобожден (deallocates), пока таймер выполняет update(), программа завершится сбоем.
 
 ● Между таймером и MyObject существует цикл сохранения, поэтому ни один из них никогда не будет освобожден
 */
