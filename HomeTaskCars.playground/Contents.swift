import UIKit

//Создать класс «Автомобиль» со свойствами:
//    * Марка
//    * Словарь, где ключ - год покупки автомобиля, а значение - владелец автомобиля (Владелец авто - то же класс с полями «Имя» и «Категории в ВУ»).
//    * Год выпуска автомобиля
//    * Количество автомобилей
//Создать метод, добавляющий водителя в словарь водителей
//Создать метод, выводящий в консоль список водителей с указанием года приобретения автомобиля



//создание класса Автомобиль

class Cars {
    //свойства
    //1 - марка
    var markAuto: String = ""
    //2 - словарь
    var dictAuto: Dictionary = [2001: "Владелец 1", 2005: "Владелец 2 ", 2008: "Владелец 3", 2019: "Владелец 4" ]
    //3 - год выпуска автомобиля
    var yearAuto: Int = 0
    //4 - количество автомобилей
    var kolichastoAuto: Int = 0

    func addToDictionaryAuto() {
        dictAuto[5] = "Альберт"
    }
    
    func printToConsole() {
        for (key,value) in nameDictionary {
            print("Это \(value.name)")
        }
    }
    
}

let car: Cars = Cars()
car.addToDictionaryAuto()


class Vladelec: Cars {
    var name: String = ""
    var categoryVY: String = ""
    
    func Vladelec(name: String, categoryNY: String) {
        self.name = name
        self.categoryVY = categoryNY
    }
}

let vladelec: Vladelec = Vladelec()
vladelec.Vladelec(name: "Владелец 1", categoryNY: "ыва")


