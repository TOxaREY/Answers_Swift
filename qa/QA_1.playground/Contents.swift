import UIKit
import PlaygroundSupport

protocol Audible {
    func makeSound()
}
//Расширения протоколов могут добавлять реализацию к соответствующим типам данных, но не могут расширить протокол или унаследовать от другого протокола. Наследование протокола всегда указывается в самом объявлении протокола. Вы можете использовать расширение протокола, чтобы обеспечить реализацию по умолчанию для любого метода или требования свойства этого протокола.
extension Audible {
    func makeSound() {
        print("*abstract sound*")
    }
}
struct Cat {}
//Расширение может расширить существующий тип для того, чтобы он соответствовал одному или более протоколам. Там где это имеет место, имена протоколов записываются точно так же, как и в случае с классами или структурами:
/* extension SomeType: SomeProtocol, AnotherProtocol {
        реализация требования протокола тут
    } */
extension Cat: Audible {
    func makeSound() {
        print("Meaow!")
    }
}
//Аргумент функции speak подписан под протокол Audible, значит будет вызываться всё подписанное под этот протокол.
func speak(_ target: Audible) {
    target.makeSound()
}
//Структура Cat уже подписанна протоколом, поэтому можно и так let audible = Cat(), но объявление типа повысит надежность.
let audible: Audible = Cat()
speak(audible)

// -    You cannot extend the Cat struct to add a protocol conformance in this way.
// -    You cannot extend a protocol to add a default makeSound implementation in this way.
// -    It's undefined whether Audible.makeSound or Cat.makeSound will be called in target.makeSound().
// -    You cannot use the protocol as a type name in let audible: Audible = Cat().
// -    The code will print *abstract sound* when run.
// +    The code will print Meaow! when run.
/*
□ Вы не можете расширить структуру _Cat_, чтобы добавить соответствие протокола таким способом.

□ Вы не можете расширить протокол, чтобы добавить реализацию _makeSound_ по умолчанию таким способом.

□ Не определено, будут ли Audible.makeSound или Cat.makeSound вызываться в target.makeSound ().

□ Вы не можете использовать протокол в качестве имени типа в _let audible: Audible = Cat () ._

□ Код будет печатать _ * abstract sound_ * при запуске.

■ Код будет печатать _Meaow!_ при запуске.
*/
