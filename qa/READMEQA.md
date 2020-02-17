#### Вопрос-Ответ 1
Какие утверждения о следующем коде верны?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_1.png)

□ Вы не можете расширить структуру _Cat_, чтобы добавить соответствие протокола таким способом.

□ Вы не можете расширить протокол, чтобы добавить реализацию _makeSound_ по умолчанию таким способом.

□ Не определено, будут ли Audible.makeSound или Cat.makeSound вызываться в target.makeSound ().

□ Вы не можете использовать протокол в качестве имени типа в _let audible: Audible = Cat () ._

□ Код будет печатать _ * abstract sound_ * при запуске.

□ Код будет печатать _Meaow!_ при запуске.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_1.playground/Contents.swift)

---

#### Вопрос-Ответ 2
После того, как макет установится, какой будет frame заключен в следующий код?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_2.png)

○ (50, 100, 50, 50)

○ (25, 75, 50, 50)

○ (25, 125, 50, 50)

○ (50, 50, 50, 50)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_2.playground/Contents.swift)

---

#### Вопрос-Ответ 3
В каком порядке будут выполняться операторы печати в следующем коде?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_3.png)

○ C, D, A, B

○ A, B, C, D

○ C, D, B, A

○ D, C, B, A

○ D, C, A, B

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_3.playground/Contents.swift)

---

#### Вопрос-Ответ 4
Учитывая следующее определение:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_4_1.png)

В чем разница между следующими двумя вызовами retrieveData?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_4_2.png)

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_4_3.png)

○ Замыкание (closure) содержит сильную (strong) ссылку на себя (self) во втором случае и неизвестную (unowned) ссылку в первом случае.

○ Замыкание содержит сильную ссылку на себя в первом случае и неизвестную ссылку во втором случае.

○ Первый случай ожидает, пока retrieveData завершит обработку в фоновом режиме (background), а затем запускает замыкание.
Второй случай запускает замыкание немедленно.

○ Нет никакой разницы. Два вызова идентичны.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_4.playground/Contents.swift)

---

#### Вопрос-Ответ 5
Что напечатает следующий код?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_5.png)

○ Bart

○ Lisa

○ nil

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_5.playground/Contents.swift)

---

#### Вопрос-Ответ 6
Что выводит следующий код?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_6.png)

○ 1 2 3 4

○ 1 2

○ 1 4 2 3

○ Порядок чисел, появляющихся на консоли, является неопределенным из-за асинхронных операций, но «1» будет напечатан первым.

○ В приложении не может быть другого основного потока (main thread), и код будет зависать (crash) при инициализации первого DispatchQueue.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_6.playground/Contents.swift)

---

#### Вопрос-Ответ 7
Можем ли мы сохранить пользовательский объект, такой как следующий, в user defaults?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_7.png)

○ Объект может быть напрямую сохранен в user defaults, если мы напишем для него соответствие NSCoding.

○ Объект может быть сохранен в user defaults, если мы соответствуем его NSCoding или Codable и затем сохраняем его как Data.

○ Нет, только объекты списка свойств (property-list) могут быть сохранены в user defaults.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_7.playground/Contents.swift)

---

#### Вопрос-Ответ 8
В чем проблема со следующим кодом?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_8.png)

○ В замыкании «self» относится к объекту таймера, а не к вызывающему объекту.
self.update() вызовет исключение «нет такого метода» во время выполнения из-за взаимодействия с средой выполнения ObjC.

○ Это не скомпилируется, потому что блок Timer не может ссылаться на себя (self) таким образом.

○ Если объект освобожден (deallocates), пока таймер выполняет update(), программа завершится сбоем.

○ Между таймером и MyObject существует цикл сохранения, поэтому ни один из них никогда не будет освобожден.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_8.playground/Contents.swift)

---

#### Вопрос-Ответ 9
Рассмотрим следующий код:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_9.png)

Этот код не будет вести себя как ожидалось. Почему?

○ UITableView.delegate - слабое (weak) свойство.
Ничто не сохраняет MyTableViewDelegate, поэтому он будет немедленно освобожден, а для делегата будет установлено значение nil.

○ Ко времени выполнения viewDidLoad() делегат табличного представления уже установлен.
Изменение его на этом этапе - неопределенное поведение. Это может привести к сбою или непредсказуемым результатам.

○ UITableViewDelegate должен быть UITableViewController. MyTableViewDelegate наследуется от NSObject.

○ UITableView.delegate не может реализовать протокол UITableViewDataSource.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_9.playground/Contents.swift)

---

#### Вопрос-Ответ 10
Есть ли в следующем коде цикл сохранения (retain cycle)?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_10_1.png)

□ Да, и его можно сломать, заменив append(bar) на append(self.bar).

□ Да, и его можно сломать, заменив callbacks.append(bar) на:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_10_2.png)

□ Да, и его можно сломать, заменив callbacks.append(bar) на:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_10_3.png)

□ Код даже не скомпилируется, потому что синтаксис append(bar) недопустим.

□ Здесь нет цикла сохранения.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_10.playground/Contents.swift)

---

#### Вопрос-Ответ 11
Рассмотрим сетевой сервис, который отправляет запрос на сервер, а затем выполняет обратный вызов, который представляет извлеченные данные пользователю во всплывающем диалоге (pop-up dialogue).
В каких очередях должен выполняться запрос и обратный вызов?

○ Запрос должен выполняться в фоновой очереди (background queue);
обратный вызов должен отправить (dispatch) код UI в основную очередь (main queue).

○ Запрос должен выполняться в основной очереди;
обратный вызов должен отправить код UI в глобальную очередь (global queue).

○ Неважно, в какой очереди выполняется код; подойдет любая очередь.

○ Оба должны выполняться в основной очереди, чтобы результат мог быть представлен пользователю.

○ Оба должны работать в глобальной очереди, чтобы они не заморозили UI.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_11.playground/Contents.swift)

---

#### Вопрос-Ответ 12
Какие утверждения о следующем коде верны?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_12.png)

□ Пуш VC #2 заставит VC #1 освободиться (deallocate).

□ Представление (presenting) VC #3 приведет к освобождению VC #2 и VC #1.

□ VC #3 будет освобожден после увольнения (dismissed).

□ VC #2 будет освобожден после подключения (popping) к корневому (root) VC.

□ VC #1 будет освобожден после подключения к корневому VC.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_12/QA_12/ViewController.swift)

---

#### Вопрос-Ответ 13
Рассмотрим следующий наблюдатель (observer) (предположим, что константа .downloadDidBegin определена в другом месте):

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_13_1.png)

Когда-то в прошлом наблюдатель создавался в произвольной очереди (не обязательно в главной очереди).
Обозреватель все еще существует.
Теперь рассмотрим следующий код, который может быть запущен в любой очереди (не обязательно основной очереди).

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_13_2.png)

Каков порядок вывода?

○ "before", "observer", "after"

○ "before", "after", "observer"

○ Порядок не определен, и выходные данные могут быть повреждены (corrupted) в зависимости от того, на какой очереди запущен post().

○ Порядок не определен, но это будет либо "before", "observer", "after" или "before", "after", "observer", в зависимости от того, какая очередь post() запущена.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_13.playground/Contents.swift)

---

#### Вопрос-Ответ 14
Вы хотите нарисовать индикатор выполнения, который растет со временем.
В следующем коде, что вы должны вызвать (call) в строке с надписью "What goes here"? 
Предположим, что код запускается в основном потоке.

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_14_1.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_14_2.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_14_3.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_14_4.png)

○ Этот подход неверен. Это должно быть реализовано другим способом, например, с DispatchQueue.asyncAfter.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_14.playground/Contents.swift)

---

#### Вопрос-Ответ 15
Рассмотрим следующий код:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_15.png)

Нам бы хотелось, чтобы на ярлыке отображалось простое приветствие с использованием значения userName, например «Hello, Arthur!» для "Arthur".
Каким будет идиоматический (idiomatic) способ автоматического обновления содержимого метки при изменении свойства userName?

○ Использование наблюдения значения ключа (Key-Value Observing) (KVO) на контроллере представления.

○ Использование наблюдения значения ключа (KVO) в свойстве userName.

○ Подписка на уведомление от NSNotificationCenter.

○ Переопределение установщика (setter) userName.

○ Использование триггера didSet для свойства userName.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_15.playground/Contents.swift)

---

#### Вопрос-Ответ 16
Какие утверждения о следующем коде верны?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_16.png)

□ Нам нужно ограничить (constrain) расширение параметром where Element: Equatable в строке 1, чтобы оно работало.

□ Сравнение (comparison) в строке 2 между Element и Element?, поэтому оно всегда будет неудачным.

□ Сравнение в строке 2 между Element и Element?, так что оно даже не скомпилируется.

□ Вызов self.first может произвести сбой во время выполнения, если коллекция пуста.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_16.playground/Contents.swift)

---

#### Вопрос-Ответ 17
Что напечатает следующий код?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_17.png)

○ false true

○ true true

○ true false

○ false false

○ Он не скомпилируется, потому что мы не можем сравнивать объекты на равенство без соответствия Equatable.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_17.playground/Contents.swift)

---

#### Вопрос-Ответ 18
Почему этот код не будет работать так, как ожидалось?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_18.png)

□ В этом нет ничего плохого, поэтому этот код будет работать, как и ожидалось.

□ API URLSession является асинхронным, поэтому мы должны вызывать окончательное завершение после завершения задачи с данными.

□ Задача данных возобновляется (resumed) автоматически при ее создании, поэтому вызов возобновления (resume) вручную приведет к тому, что запрос будет отправлен дважды.

□ Принудительное развертывание (orce-unwrap) после инициализатора URL небезопасно.

□ Нам нужно проверить, что полученные данные на nil, чтобы предотвратить возможный сбой.

□ Забыли инициализировать downloadedData, поэтому результат может быть неопределенным.

□ Аргумент закрытия (completion) замыкания должен быть помечен как @escaping.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_18.playground/Contents.swift)

---

#### Вопрос-Ответ 19
Рассмотрим следующий код:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_1.png)

Какая из строк будет успешно скомпилирована?

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_2.png)

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_3.png)

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_4.png)

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_5.png)

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_6.png)

□ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_19_7.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_19.playground/Contents.swift)

---

#### Вопрос-Ответ 20
Каков предполагаемый тип x и у в следующем коде?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_20.png)

○ x: KeyPath<Cat, String>
  y: KeyPath<Cat, String>

○ x: (Cat) -> String
  y: (Cat) -> String

○ x: WritableKeyPath<Cat, String> 
  y: KeyPath<Cat, String>

○ x: ReferenceWritableKeyPath<Cat, String> 
  y: Key Path<Cat, String>

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_20.playground/Contents.swift)

---

#### Вопрос-Ответ 21
Какие методы жизненного цикла UIViewController'a будут вызваны для SecondViewController при вызове функции createSecondViewController?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_21.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_21.playground/Contents.swift)

---

#### Вопрос-Ответ 22
Напишите, пожалуйста, парсер JSON на Swift.

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_22.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_22.playground/Contents.swift)

---

#### Вопрос-Ответ 23
Описаны 4 потока (3 - асинхронных, 1 - синхронный). Напишите код обработчика так, чтобы после выполнения 3-х асинхронных потоков был выполнен синхронный.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_23.playground/Contents.swift)

---

#### Вопрос-Ответ 24
Какие есть проблемы в приведённом ниже коде? Как бы Вы его отрефакторили?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_24.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_24.playground/Contents.swift)

---

#### Вопрос-Ответ 25
Напишите, пожалуйста, на Swift функцию (метод), которая будет печатать числа от 0 до 1000, кратные трём и не кратные пяти, сумма цифр в которых меньше десяти.

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_25.playground/Contents.swift)

---

#### Вопрос-Ответ 26
Есть ли проблемы в приведённом ниже коде? Если есть, то какие?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_26.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_26.playground/Contents.swift)

---

#### Вопрос-Ответ 27
Создаётся iOS-приложение, работающее с данными на сервере. В серверном API есть команды получения, добавления, обновления и удаления данных: /item/list, /item/add, /item/update и /item/delete.
На главном экране приложения отображается список элементов "item", которые приложение при каждом запуске должно загружать с сервера.
Приложение также должно уметь работать в офлайн-режиме: если пользователь добавил, отредактировал или удалил элемент, эти изменения должны сохраниться на сервере, когда появится доступ в Интернет, даже если приложение было закрыто.
Какие проблемы и сложности такой архитектуры клиент-серверного взаимодействия Вы видите? Как их решать? Знакомы ли Вам какие-либо типовые решения таких задач? Если не знакомы, пожалуйста, спроектируйте и опишите архитектуру, которая "будет работать".

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_27.playground/Contents.swift)

---

#### Вопрос-Ответ 28
В чем разница между stride(from:to:by:) и stride(from:through:by:)?

○ Диапазон stride(from:to:by:) используется для убывающих значений, а диапазон stride(from:through:by:) для возрастающих

○ Диапазон stride(from:to:by:) используется для возрастающих значений, а диапазон stride(from:through:by:) для убывающих

○ Диапазон stride(from:to:by:) не включает значение параметра to, а диапазон stride(from:through:by:) включает значение параметра through

○ Диапазон stride(from:to:by:) включает значение параметра to, а диапазон stride(from:through:by:) не включает значение параметра through

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_28.md)

---

#### Вопрос-Ответ 29
Какая инструкция позволяет создать убывающую последовательность?

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_29_1.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_29_2.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_29_3.png)

○ ![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_29_4.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_29.playground/Contents.swift)

---

#### Вопрос-Ответ 30
Что необходимо сделать, чтобы после завершения работы функции ее измененные параметры сохранялись?

○ Это невозможно, так как изменения параметров не сохраняются после завершения работы функции и не видны за ее пределами

○ Это невозможно, так как попытка изменить значение параметра функции из тела этой же функции приведет к ошибке времени компиляции

○ Объявить параметр как сквозной, используя ключевое слово inout

○ Объявить параметр как переменный, используя ключевое слово var

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_30.md)

---

#### Вопрос-Ответ 31
Какие типы коллекций используются в Swift?

○ Array, Set, Tuple, Map

○ Array, Set, Queue, Dictionary

○ Array, Set, Map

○ Array, Set, Dictionary

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_31.playground/Contents.swift)

---

#### Вопрос-Ответ 32
Что означает объявление базового типа со знаком вопроса?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_32.png)

○ После присвоения значение переменной не может изменяться

○ Переменная может принимать значения различных типов

○ У данной переменной может не быть значения

○ Значение переменной отсутствует

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_32.playground/Contents.swift)

---

#### Вопрос-Ответ 33
Замыкания — это ссылочный тип или тип-значение?

○ В Swift не используются замыкания

○ Зависит от контекста, в котором они объявляются

○ Замыкания — это тип-значение

○ Замыкания — это ссылочный тип

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_33.playground/Contents.swift)

---

#### Вопрос-Ответ 34
Какие изменения необходимо внести в этот код, чтобы он успешно скомпилировался?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_34.png)

○ Код компилируется без ошибки

○ Задать значения переменным х и у внутри структуры

○ Заменить "struct" на "class"

○ Заменить "let" на "var"

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_34.playground/Contents.swift)

---

#### Вопрос-Ответ 35
Какое значение будет иметь переменная counter.п после выполнения кода?

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/QA_35.png)

○ Optional(nil)

○ Optional(2)

○ nil

○ Optional(O)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_35.playground/Contents.swift)

---

#### Вопрос-Ответ 36
Выберите основные отличия между structure и class.

1. Структуры — ссылочный тип, классы — тип-значение

2. Классы — ссылочный тип, структуры — тип-значение

3. Структуры поддерживают наследование, а классы — нет

4. Классы поддерживают наследование, а структуры — нет

○ 2 и 4

○ 2 и 3

○ 1 и 4

○ 1 и 3

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_36.playground/Contents.swift)

---

#### Вопрос-Ответ 37
Какими способами можно развернуть optional безопасно?

1. Optional binding

2. Optional chaining

3. Nil coalescing operator

4. Forced unwrapping

○ Только 4

○ Только 1

○ 1 и 2

○ 1,2 и 3

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/qa/QA_37.md)

---