import UIKit

//1. Создать класс Домашнее животное. Создать подклассы по видам животных (например, Кошка, Собака, Канарейка или любые другие). Предусмотреть свойства, хранящие в себе кличку питомца, его год рождения, а также создать вычисляемое свойство, хранящее в себе возраст (с точностью до года). Создать инициализаторы, позволяющие при создании экземпляров присваивать им клички.  Создать методы, выводящие на экран звукоподражательную транскрипцию этих животных (мяу, гав-гав, чирик-чирик и тд.).

//2. Создать класс «Автомобиль» со свойствами:
//    * Марка
//    * Словарь, где ключ - год покупки автомобиля, а значение - владелец автомобиля (Владелец авто - то же класс с полями «Имя» и «Категории в ВУ»).
//    * Год выпуска автомобиля
//    * Количество автомобилей
//Создать метод, добавляющий водителя в словарь водителей
//Создать метод, выводящий в консоль список водителей с указанием года приобретения автомобиля

class HomePets {
    var nickname: String = ""
    var classPet: String = ""
    var name: String = ""
    var year = 2019
    var yearPet: Int = 0
    var signalPet: String = ""
    
    func Pet(name: String, year: Int, yearPet: Int, signalPet: String) {
        self.name = name
        self.yearPet = yearPet
        self.year = year
        self.signalPet = signalPet
        print("Имя живоного \(self.name), животное родилось в:\(self.yearPet) году. Возвраст: \(self.year - self.yearPet). \nИздает звук: \(signalPet)\n ")
    }
    
    init(nickname: String, classPet: String) {
        self.nickname = "Wolf"
        self.classPet = "Собака"
    }
 }



let dog: HomePets = HomePets(nickname: "Wolf", classPet: "Cобака")
dog.signalPet = "гав-гав"
dog.name = "Джимми"
dog.year = 2019
dog.yearPet = 2014

print("Имя живоного: \(dog.name), животное родилось в: \(dog.yearPet) году. Возвраст: \(dog.year - dog.yearPet) лет и его кличка \(dog.nickname) \nИздает звук: \(dog.signalPet)\nкласс животного: \(dog.classPet)\n")


class Cat: HomePets {
    override func Pet(name: String, year: Int, yearPet: Int, signalPet: String) {
        super.Pet(name: name, year: year, yearPet: yearPet, signalPet: signalPet)
        print("Имя живоного: \(name), животное родилось в: \(year) году. Возвраст: \(year - yearPet) лет и его кличка \(nickname) \n Издает звук: \(signalPet)\nКласс животного \(classPet)")
    }
}

let cat:Cat = Cat(nickname: "Adolf", classPet: "Кошка")
cat.Pet(name: "Пушистый дестоп", year: 2019, yearPet: 2008, signalPet: "ВЫ ВСЕ НЕДОСТОЙНЫ")


