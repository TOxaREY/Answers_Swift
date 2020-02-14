import UIKit
import PlaygroundSupport

struct Person {
    var name: String
}

var p1 = Person(name: "Bart")
var p2 = p1
p1.name = "Lisa"
print(p2.name)//Bart


//Структура - тип значение, а класс - ссылочный тип
class Person2 {
    var name: String?
}

var p11 = Person2()
p11.name = "Bart"
var p22 = p11
p11.name = "Lisa"
print(p22.name!)//Lisa


/*
 ● Bart

 ○ Lisa

 ○ nil
 */
