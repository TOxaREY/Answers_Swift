import UIKit
import PlaygroundSupport

/*
 Класс - ссылочный типа.
 При присвоении counter2 counter1, counter2 имеет ссылку на тот же объект что и counter1.
 При изменении в экземплере counter2, изменяется объект по ссылке,
 поэтому в экземпляре counter1 тоже.
 */

class Counter {
    var n: Int? = 0
}
var counter1 = Counter()
var counter2 = counter1
counter2.n = 2
print(counter1.n) //Optional(2)

/*
 ○ Optional(nil)

 ● Optional(2)

 ○ nil

 ○ Optional(O)
 */
