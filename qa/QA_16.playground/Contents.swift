import UIKit
import PlaygroundSupport


extension Collection  { // Line 1 //where Element: Equatable код работает
    func starts(with elem: Element) -> Bool {
        return self.first == elem // Line 2
                                  /* Binary operator '==' cannot be applied to operands
                                     of type 'Self.Element?' and 'Self.Element'
                                     Бинарный оператор '==' нельзя применить к операндам
                                     типа 'Self.Element?' и «Self.Element»
                                   */
//        return self.first          //Optional type 'Self.Element?' cannot be used as a boolean;
                                   //test for '!= nil' instead. Replace 'self.first' with '(self.first != nil)'
    }
}
[1, 2, 3].starts(with: 1)

/*
 ■ Нам нужно ограничить (constrain) расширение параметром where Element: Equatable в строке 1, чтобы оно работало.

 □ Сравнение (comparison) в строке 2 между Element и Element?, поэтому оно всегда будет неудачным.

 ■ Сравнение в строке 2 между Element и Element?, так что оно даже не скомпилируется.
 
 ■ Вызов self.first может произвести сбой во время выполнения, если коллекция пуста.
 */
