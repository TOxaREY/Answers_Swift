import UIKit
import PlaygroundSupport

class C {
    let a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

let clet = C(a: 0, b: 0)
var cvar = C(a: 0, b: 0)


/*
 2 типа данных: тип значения и тип ссылки.
 В контексте типов значений(в данном случае struct):

 'let' определяет постоянное значение (не изменяемое).
 'var' определяет изменяемое значение (изменяемое).

 В контексте типов ссылок(в данном случае class):

 Метка данных - это не значение, а ссылка на значение.
 если aPerson = Person(name: Foo, first: Bar)
 aPerson не содержит Данные этого лица, но содержит ссылку на данные этого Лица.
 */

/*
■   clet.b = 1


■   cvar = C(a: 1, b: 1)


■   cvar.b = 1


□   clet = C(a: 1, b: 1) //Невозможно присвоить значение: 'clet' является константой 'let'
                         //Измените значение let на var, чтобы сделать его изменчивым

■   cvar.a


□   clet.a = 1 //Невозможно присвоить свойству: 'a' является константой 'let'
               //Измените значение let на var, чтобы сделать его изменчивым
*/
