//switch-case
//проверка условий в котором есть несколько состояний

import UIKit

// структура switch-case
// используется в тех услвоиях где нужно перебирать все значения и так же можно добавлять диапозон
//

var ventilator: String = "Hot"

switch ventilator {
    
case "hot":
    print ("Hot Air")
case "Cold":
    print ("Cold Air")
case "off":
    print("Off ventilator")
default:
    print ("Error")
    
}

// еще один пример c диапозоном дат

var period: Int = -9999

switch period {
    
case -99999999 ... 0:
    print("Wow time")
    
case 0 ... 500:
    print("Antich time")
    
case 500 ... 2100:
    print("our time")
    
case 2100 ... 5000:
    print("Future time")

default:
    print ("Another time")
}

/// Циклы

/// есть несколько циклов

// редко используемые

// while & repeat while



var timer = 5

print ("отчет пошел")

// проверяет потом исполняет
while timer > 0 {
    // это тело цикла
    print(timer)
    timer -= 1 //отнимает единицу пока не дойдет с 5 до 1 потому что переменная в нашем случае равна 5 , Важное уточненеиние : если timer -= 1 будет до print(timer) , то выводиться будет с 4 до 0
}
    //После того как цикл закончит свою работы -  будет вывод принта вне цикла
print ("Время!")


/// repaeat while , констуркция, используется редко. Сначала будет исполнение потом проверка

var repeatTimer = 5
    print ("Новый отсчет пошел!")
repeat {
    print (repeatTimer)
    repeatTimer -= 1
} while repeatTimer > 0

print ("Новое Время!")


// самый популярный цикл for in
// цикл будет показывать по возрастанию с 1 до 5

let array = [1,2,3,4,5]

for index in array  {
    print (index)
}


// массив из строк или чисто из букв

let arrayOfStrings = ["ABC", "def", "xyz"]

for index in arrayOfStrings {
    print(index)
}

// парсинг строки по симовлам c помощью цикла в данном примере каждая буква будет на новой строке

let string = "Просто строка"
 
for index in string {
    print (index)
}


/// практика


//создание двух массивов (студентов (1) и кто есть (2))
let studentArray = ["Alex", "Timur", "Ivan", "Tatyana", "Alexey", "Artem"] //1
let isHere = ["inRoom","inRoom","inRoom","Online","IDK","IDK"] //2


//заходим в цикл где нужно два показателя индекс и студент , enumerated нужен для понимания что мы можем обращаться к индексу опеределнного элемента , если его не будет в данном примере - работать ничего не будет (появится ошибка)
for (index, student) in studentArray.enumerated() {
    
    //провека элементов
    if isHere[index] == "Online \n" {
        print ("\(student) today Online \n")
    } else if isHere[index] == "inRoom" {
        print ("\(student) today in room \n")
    } else {
        print ("don't know where student \(student)")
    }
}


// functions  Функции

//не принимают и не возращают

func giveMeFive() {
    print ("Give five")
}

//вызов функции
giveMeFive()


//функция с ключевым параметром c принятием аргумента

func plusOne(param: Int) {
    var param = param
    param += 1
    print(param)
}

plusOne(param: 35)


func plusOneRet(param: Int) -> String{
    var param = param
    param += 1
    print (param)
    
    return ("Summa = \(param)")
}

let summa = plusOneRet(param: 12)

print (summa)

//функция с несколькими значениями

//работаем без объявления переменных
//Объяснение функции - в скобках прописываем что принимает функция Int... (показывает что элементов может быть любое количество). Язык строгой типизации , поэтому ->Int обязательно (преобразование в Int)
func intSumma (ints: Int...) -> Int {
    var sum = 0
    
    for item in ints {
        //к сумме прибавлениям значения item
        sum += item
    }
    
    //выводим сумму , в нашем случае появлется = 16
    return sum
}

print(intSumma(ints: 1,2,3,4,5,1))

//с объявлением переменных

var summa2 = intSumma(ints: 5,6,7,8,9)

print (summa2 + intSumma(ints: 8,7,6,5))


/// еще раз цикл for in пример c использованием словаря

let animalsWeight = ["Слон" : 1500  , "Свинья": 300, "Лошадь": 450, "Удав": 8, "Курица": 2]

for (animal, weight) in animalsWeight {
    
    if animalsWeight[animal]! < 30 {
        print("Животное: \(animal). Вес равен = \(weight) (меньше 30)")
    } else if animalsWeight[animal]! > 30 {
        print ("Животное: \(animal). Вес равен = \(weight) (больше 30)")
    }
}
//
//
//
//// домашнее задание animals
//
//var animalsArrayNew = ["Elephant": 1500 , "Pig": 400, "Horse": 600 , "Boa": 10, "Chicken": 2]
//var minWeight = ["Elephant": 1500 , "Pig": 400, "Horse": 600 , "Boa": 10, "Chicken": 2]
//
//for (animal, weight) in animalsArrayNew {
//    if animalsArrayNew == minWeight {
//        print ("asd")
//    } else if animalsArrayNew != minWeight {
//        print("\(animal)'s weight = \(weight)")
//    } else {
//    print("\(animal)'s weight = \(weight)")
//    }
//}
///// еще одна попытка
//
//var studentArrayOne = ["Elephant" , "Pig", "Horse" , "Boa", "Chicken"]
//var isHereOne = [1500, 400, 600, 10, 2]
//
//for (index, student) in studentArrayOne.enumerated() {
//    if isHereOne[index] > 30 {
//        print ("Вес животного \(student) большой и его вес больше 30 \n")
//    } else if isHereOne[index] < 30{
//        print ("Вес животного \(student) маленький и его вес меньше 30")
//    } else {
//        print ("Error")
//    }
//}
//
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//// Задание номер два
//
//
//var developerStatus: Int = 10
//
//switch developerStatus {
//case 0...10:
//    print ("Developer status is New")
//case 10...30:
//    print ("Developer status is Junior")
//case 30...50:
//    print ("Developer status is Middle")
//case 50...120:
//    print ("Developer status is Senior")
//case 120...200:
//    print ("Developer status is Jedy")
//default:
//    print ("Fatal Error")
//}
//
////// Функция
//////func plusOne(param: Int) {
////    var param = param
////    param += 1
////    print(param)
////}
////
////plusOne(param: 35)
//
//func Calculator() {
//    //значения
//    let a: Double = 3.123123
//    let b: Double = 4.123123
//
//    // арифметические операторы
//    let Sum: Double = a + b
//    let Del: Double = a / b
//    let Umn: Double = a * b
//    let Min: Double = a - b
//
//    print("Сложение: \(Sum) \n")
//
//    print("Деление: \(Del) \n")
//
//    print("Умножение: \(Umn) \n")
//
//    print("Вычетание: \(Min) \n")
//}
//
//Calculator()
//
//
////игра
////Магнитотерапия
//let arrayOfStringes = "Машина"
//let newWord = "шина"
//
//for item in arrayOfStringes {
//    if arrayOfStringes == newWord{
//     print("ДА")
//     } else {
//         print ("НЕТ")
//    }
//    }
//
//for item in newWord {
//    if newWord == arrayOfStringes{
//     print("ДА")
//     } else {
//         print ("НЕТ")
//    }
//    }
//
////func proverka() {
////    if arrayOfStringes == newWord{
////     print("ДА")
////     } else {
////         print ("НЕТ")
////    }
////}
////
////proverka()
//
//
//let fruitsArray = ["apple", "mango", "blueberry", "orange"]
//let vegArray = ["tomato", "potato", "mango", "blueberry"]
//
//let newArray  = fruitsArray.filter { (string) -> Bool in
//     return vegArray.contains(string)
//}
// print(newArray)
//



let firstWord: Array = ["apple"]
var secondWord: Array = ["pple"]

for _ in secondWord {
    if (secondWord = firstWord) {
        print ("Да, это слово есть в слове")
    } else if (secondWord != firstWord) {
        print ("Нет, этого слова нет")
    }
}
