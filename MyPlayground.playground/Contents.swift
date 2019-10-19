//Хамзин Тимур

import UIKit

var str: String = "Hello, playground" //var переменная
print  (str)

let str1 = "Hello, Steve!"
print (str1)



var sumString = str + " " + str1
print (sumString)

// логическое равно
//==

// не равно
//!=



// составные операторы
var e = 1
var f = 0

//Вместо того чтобы писать
f = e + f

//надо написать
f += e

print (f)

//унарные операторы

e = -f

//Коллекции

//массивы
var array = [String]()

//добавление данных в массив
//append присваивание массиву новое значение
//contestsOf = добавление массива c данными

array.append("Melone")
array.append("Apple")
array.append("Apple")

print (array)
print (array[1])

//удаление данных из массива
//remove
array.remove(at: 1)

print(array)

//массивы - это коллекция котораяя содержит упорядочное содержимое элементов

//словарь - это тот же самый массив , который хранит в паре (ключ-значение) и не имеет индекса

var dict: Dictionary = [String:Int]() //скобки обязаталеьны для пустого массива

//либо начать написать словарь такого типа

var dict1: Dictionary = ["Melone" : 10 , "Apple" : 7]
print (dict)

//множества не могут быть инифициализированы без значений
//в set хранятся элементы которые никогда не упорядычиваются
//элементы не индексируются
//множества нужны для проверки элементов (похожих во множетсве)
//удобно применять для проверки
var set: Set = ["cocoa", "bread", "cocoa"]


//Инструкции

//1

//if else - для проверки условия

var number1 : Int = 15
var number2 : Int = 28
var result: Int = 0

if number1 < number2 {
    result = number1
} else if number1 > number2 {
    result = number2
} else if number1 == number2 {
    result = number2
} else {
    print ("System Error")
}

print("Result: \(result)")


//конструкция guard



//func makeCoffee(isHotWater: Bool) -> String {
//    guard isHotWater == true else { return ("No Hot Water!") }
//    return ("Enjoy!")
//}

//var makeCoffeeResult = makeCoffee(isHotWater: false)
//
//print(makeCoffeeResult
//)


//домашнеее задание
//
//1. Задача на коллекции и условия:
//В Солнечной системе есть внутренние планеты (которые находятся внутри Пояса Астероидов: Меркурий, Венера, Земля, Марс) и внешние планеты (которые находятся вне Пояса Астероидов: Юпитер, Сатурн, Уран, Нептун, Плутон). Также во Вселенной есть бесчисленное множество планет, которые находятся вне пределов Солнечной системы.
//ЗАДАЧА: Написать программу в Playgroung, которая получает имя планеты в виде заданной переменной и выводит в консоль один из ответов:
//a) "Я живу внутри пояса астероидов"
//b) "Я живу с внешней стороны пояса астероидов"
//c) "Я живу вне пределов Солнечной системы"

let firstPlanets: Set = ["Меркурий", "Венера", "Земля", "Марс"]
let secondPlanets: Set = ["Юпитер", "Сатурн", "Уран", "Нептун", "Плутон"]

var value: String = "фывфывфыфывфыв"

if firstPlanets.contains(value) {
    print ("Я живу внутри пояса астероидов")
} else if  secondPlanets.contains(value) {
    print ("Я живу с внешней стороны пояса астероидов")
} else {
    print ("вне солнечной системы")
}


//Требуется написать функцию makeCoffeeIfElse  - аналог функции makeCoffee (см. Playground) с той лишь разницей, что makeCoffeeIfElse будет реализовывать проверку наличия кофе и горячей воды через конструкцию if-else. Предусмотреть вариант, когда нет ни горячей воды, ни кофе. В этом случае программа должна вывести в консоль что-то вроде: "No Hot water and Coffee!"


func makeCoffeeIfElse(isHotWater: Bool, isCoffee: Bool) -> String {
    
    //у меня есть все ингридиенты
    if isCoffee == true {
        if isHotWater == true {
            print ("Вы можете сделать кофе")
        }
    }
    
    //у меня есть кофе , но нет воды
     if isCoffee == true {
          if  isHotWater == false {
            print ("Вы не можете сделать кофе: вам нужна горячая вода")
        }
    }
    
    //у меня нет кофе , но есть вода
     if isCoffee == false {
             if  isHotWater == true {
               print ("Вы не можете сделать кофе: вам нужны кофейные зерна")
           }
       }
    
    //я нищеброд ,у меня ничего нет
     if isCoffee == false {
                if  isHotWater == false {
                  print ("У вас нет ингридиентов для приготовления кофе")
              }
          }
    
    return ("")
}

var makeCoffeResult = makeCoffeeIfElse(isHotWater: false, isCoffee: false)

print (makeCoffeResult)
