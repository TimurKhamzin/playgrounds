import UIKit

//1. Создать класс Домашнее животное. Создать подклассы по видам животных (например, Кошка, Собака, Канарейка или любые другие). Предусмотреть свойства, хранящие в себе кличку питомца, его год рождения, а также создать вычисляемое свойство, хранящее в себе возраст (с точностью до года). Создать инициализаторы, позволяющие при создании экземпляров присваивать им клички.  Создать методы, выводящие на экран звукоподражательную транскрипцию этих животных (мяу, гав-гав, чирик-чирик и тд.).


class HomePets {
    var name: String = ""
    var year = 2019
    var yearPet: Int
    
    func Pet(name: String, year: Int, yearPet: Int) {
        self.name = name
        self.yearPet = yearPet
        self.year = year
        print("Pet name is \(name), bird year is \(year) year's Old is \(year - yearPet) ")
    }
}

let pet: HomePets = HomePets()
pet.name = "Mersedec"
pet.yearPet
