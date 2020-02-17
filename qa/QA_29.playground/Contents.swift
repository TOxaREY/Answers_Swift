import UIKit
import PlaygroundSupport

/*
 for var i = 10; i >= 0, i --
 C-style for statement has been removed in Swift 3
 */
/*
 static func ... (minimum: Self, maximum: Self) ->
    ClosedRange<Self>
 от минимума к максимуму т.е. 10...0 неверно
 */

for i in stride(from: 10, to: 0, by: -1) {
    print(i)//10 9 8 7 6 5 4 3 2 1
}

/*
 ○  for var i = 10; i >= 0, i --
 
 ○  for i in 10...0
 
 ○  for i in 10..>0

 ●  for i in stride(from: 10, to: 0, by: -1)
 */
