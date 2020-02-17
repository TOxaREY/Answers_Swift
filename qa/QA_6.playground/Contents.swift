import UIKit
import PlaygroundSupport

let main = DispatchQueue(label: "main")
let background = DispatchQueue(label: "background")

main.async {
    print("1")
    background.sync {
        sleep(1)
        print("2")
        main.sync {
            print("3")
        }
    }
    print("4")
}


/*
 ○ 1 2 3 4

 ● 1 2

 ○ 1 4 2 3

 ○ Порядок чисел, появляющихся на консоли, является неопределенным из-за асинхронных операций, но «1» будет напечатан первым.

 ○ В приложении не может быть другого основного потока (main thread), и код будет зависать (crash) при инициализации первого DispatchQueue.
 */
