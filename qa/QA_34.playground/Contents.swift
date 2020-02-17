import UIKit
import PlaygroundSupport

/*
 В контексте типов значений(в данном случае struct):
 'let' определяет постоянное значение (не изменяемое).
 'var' определяет изменяемое значение (изменяемое).
 */

struct ChartPoint {
    var x: Int
    var y: Int
}
let chartPoint = ChartPoint(x: 8, y: 10)
chartPoint.x += 10 /* left side of mutating operator isn't mutable:
                      'chartPoint' is a 'let' constant
                      левая часть оператора мутации не является
                      изменяемой: 'chartPoint' является константой 'let'
                      change 'let' to 'var' to make it mutable
                      */


/*
 ○ Код компилируется без ошибки

 ○ Задать значения переменным х и у внутри структуры

 ○ Заменить "struct" на "class"

 ● Заменить "let" на "var"
 */
