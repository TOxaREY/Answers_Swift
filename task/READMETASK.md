#### Задание 1
На входе - массив целых чисел.
Найдите наибольшую по модулю разность между парами смежных элементов.

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/Task_1.png)


[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_1.playground/Contents.swift)

---

#### Задание 2
Реализовать функцию, которая возвращает массив строк с целочисленными значениями, попеременно возрастающими и убывающими от 1 до N. 
Например, результат при N=4:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/Task_2.png)

Допустимые значения N:
0 <= N < 1000000;
Постарайтесь написать короткое и читаемое решение.


[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_2.playground/Contents.swift)

---

#### Задание 3
Дан неупорядоченный массив целых чисел arr и целое число k
Реализуйте функцию, которая возвращает число - количество уникальных пар, разность значений которых равна k
Пример:
* arr = [1, 5, 3, 4, 2, 2]; k=3
* Уникальные пары с разностью 3: [1, 4], [5, 2]
* Итого, количество пар: 2

Ограничения:
* 0 <= k <= 1000000
* 0 <= arr[i] <= 1000000

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_3.playground/Contents.swift)

---

#### Задание 4
Напишите функцию, которая принимает предложение и возвращает количество содержащихся в нем четырехбуквенных слов.
Входной аргумент sentence — строка со словами, разделенными пробелами без пунктуации.
Пример:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/Task_4.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_4.playground/Contents.swift)

---

#### Задание 5
Дано число x. С ним можно выполнить только две операции:

* удвоение: умножить число на 2
* уменьшение: вычесть 1 из числа

Напишите функцию, которая возвращает минимальное количество операций, необходимых для преобразования начального числа x в число y.
Пример:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/Task_5.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_5.playground/Contents.swift)

---

#### Задание 6
Массив из N элементов размещается в бочках. i-й элемент имеет массу dwarfs[i]. Бочки могут выдержать массу не более limit.
Каждая бочка вмещает не более 2 элементов при условии что их суммарная масса не превышает limit.
Напишите функцию, определяющую минимальное количество требуемых бочек.

На входе:  
* dwarfs - массив элементов, каждое значение определяет массу элемента 
* limit - максимальная масса, которую выдержит бочка

На выходе: целое число - минимальное количество бочек
Примечание: 1 <= dwarfs[i] <= limit  
Пример:

![](https://github.com/TOxaREY/Answers_Swift/blob/master/image/Task_6.png)

[ОТВЕТ](https://github.com/TOxaREY/Answers_Swift/blob/master/task/Task_6.playground/Contents.swift)

---