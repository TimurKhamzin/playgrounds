
//

import UIKit

//замыкания - это теже функции , но у них нет имени , просто исполняемый блок кода без имени


//пример функции
func printMeText() {
    print ("Hello")
}

printMeText()

//пример замыкания
// c 18 строки по 30 - это все пример замыкания
let text = {
    print ("Me text")
}

//Замыкание можно поместить в саму функцию , функция должна принимать в себя замыкание

func repeatThreeTimes (closure: ()->()) {
    for _ in 1...3 {
        closure()
    }
}

repeatThreeTimes(closure: text)




//замыкание номер 2

//инициализация переменных
var summa = 0
var integer = 0

//указывание типа замыкания , не принимает и возврашает целочисленное значения и кладем его в переменную Int. В замыкании есть два действия - к сумму прибавляем integer. На данном этапе замыкание не используется . мы просто его инициализировали.
var sum = {()->(Int) in
    summa += integer //прибавление к сумме интеджер
    return summa //вовзрат значения summa
}
//еще одно замыкание
var mult = {()->(Int) in
    summa *= integer
    return summa
}

//number является аргументом функции
func printMeSumma(number: Int, closure: ()->(Int)) -> Int {
    integer = number //приравнием к integer = number
    closure() //вызов замыкании , но пока неизвестно какое замыкание вызывать
    return summa //вовзрат значения summa
}

print (printMeSumma(number: 30, closure: sum))
print (printMeSumma(number: 10, closure: mult))
