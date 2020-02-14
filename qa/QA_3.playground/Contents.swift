import UIKit
import PlaygroundSupport

// Пауза на выполнение очереди
// Global concurrent queue - параллельная очередь
//Задачи в concurrent очередях гарантированно будут выполняться в порядке, в котором они были добавлены
DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
// Управление возвращается основному потоку, задача будет выполняться параллельно async
    DispatchQueue.global().async {
        print("A")
    }
// B раньше A потому что это основной поток
    print("B")
}
// D раньше C тоже из-за передачи основному потоку
DispatchQueue.main.async {
    print("C")
}
print("D")


/*
 ○ C, D, A, B

 ○ A, B, C, D

 ○ C, D, B, A

 ● D, C, B, A

 ○ D, C, A, B
 */


