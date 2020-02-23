import UIKit
import PlaygroundSupport

// Добавим для теста
var i = 0

class OnlyOneST {
    /* Это всё больше не нужно !!!
    class var sharedlnstance:OnlyOneST {
        struct Static {
            var onceToken: dispatch_once_t = 0
            var instance: OnlyOneST? = nil
        }
        dispatch_once (&Static.onceToken) {
            Static.instance = OnlyOneST()
        }
        return Static.instance!
    }
    */
    static let sharedlnstance = OnlyOneST()
   
    //Добавиться приватный инициализатор
    private init() {
        // Добавим для тетста
        i += 1
         print(i)
    }
}

OnlyOneST.sharedlnstance // создали объект напечатоно 1
OnlyOneST.sharedlnstance // больше ничего не печатает, не создается объект
OnlyOneST.sharedlnstance // больше ничего не печатает, не создается объект
OnlyOneST.sharedlnstance // больше ничего не печатает, не создается объект
OnlyOneST.sharedlnstance // больше ничего не печатает, не создается объект


/*
 Здесь старый синтаксис синглтона. Основная задача синглтона — предоставить
 пользователю один и только один объект определенного класса на весь
 жизненный цикл приложения. Если вызвать простой класс(OnlyOneST), то можно создать
 сколько угодно объектов этого класса. Таким образом, первое что нужно сделать на
 пути к синглтону — запретить создание объектов нашего класса извне.
 В этом нам поможет приватный инициализатор. Далее сохраняем наш объект-одиночку в
 статической константе sharedlnstance и нам совсем необязательно писать для
 этого целый метод с проверками на nil. Сам объект будет создан при первом обращении к
 этой константе и записан в нее один-единственный раз.
 */
