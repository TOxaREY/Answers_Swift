import UIKit
import PlaygroundSupport

struct Cat {
    var name: String
    let color: String
}

let x = \Cat.name
let y = \Cat.color


print(x) //Swift.WritableKeyPath<__lldb_expr_1.Cat, Swift.String>
print(y) //Swift.KeyPath<__lldb_expr_1.Cat, Swift.String>

/*
 Выражение Key-Path
 Ключевые пути по существу позволяют нам ссылаться на любое свойство
 экземпляра как отдельное значение. Как таковые, они могут передаваться,
 использоваться в выражениях и позволяют фрагменту кода получать или
 устанавливать свойство, не зная, с каким именно свойством оно работает.

 Ключевые пути бывают трех основных вариантов:

 KeyPath: Предоставляет доступ только для чтения к свойству.
 WritableKeyPath: Предоставляет доступ на чтение и запись к
    изменяемому свойству с семантикой значения (поэтому рассматриваемый
    экземпляр также должен быть изменяемым, чтобы разрешить запись).
 ReferenceWritableKeyPath: Может использоваться только со ссылочными
    типами (такими как экземпляры класса) и обеспечивает доступ для
    чтения и записи любого изменяемого свойства.
 https://www.swiftbysundell.com/articles/the-power-of-key-paths-in-swift/
 */

/*
 ○ x: KeyPath<Cat, String>
   y: KeyPath<Cat, String>

 ○ x: (Cat) -> String
   y: (Cat) -> String

 ● x: WritableKeyPath<Cat, String>
   y: KeyPath<Cat, String>

 ○ x: ReferenceWritableKeyPath<Cat, String>
   y: Key Path<Cat, String>
 */
