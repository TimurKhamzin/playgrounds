import UIKit

class HomePets {
    var name: String = "" //кличка питомца +
    var birdDay: Int = 0 //год рождения (питомца) +
    var day: Int = 2019 //текущий год , для расчета возраста питомца +
    var petSignal: String = "" //переменная для сигнала животного
    var classPet: String = "" //класс животного +
    var clichkaPet: String = "" //кличка +
    
    init(clichkaPet: String, classPet: String) {
        self.clichkaPet = clichkaPet
        self.classPet = classPet
    }
    
    //метод для вывода информации
    
    func HomePets(name: String, day: Int, birdDay: Int, classPet: String, clichkaPet: String, petSignal: String) {
        self.birdDay = birdDay
        self.name = name
        self.day = day
        self.clichkaPet = clichkaPet
        self.classPet = classPet
        self.petSignal = petSignal
    }
}

let dog: HomePets = HomePets(clichkaPet: "Милота", classPet: "Собака")
dog.birdDay = 2014
dog.name = "Стив"
dog.petSignal = "Гав-Гав!"
dog.day = 2019


print("Имя животного: \(dog.name). Возвраст животного \(dog.day - dog.birdDay). Кличка питомца: \(dog.clichkaPet). Класс животного: \(dog.classPet). Животное издает звук: \(dog.petSignal) \n ")


//подскласс Кошка

class Cat: HomePets {
    override func HomePets(name: String, day: Int, birdDay: Int, classPet: String, clichkaPet: String, petSignal: String) {
        super.HomePets(name: name, day: day, birdDay: birdDay, classPet: classPet, clichkaPet: clichkaPet, petSignal: petSignal)
    }
}

let cat: Cat = Cat(clichkaPet: "Адовый Монстр", classPet: "Кошка")
cat.HomePets(name: "Барни", day: 2019, birdDay: 1987, classPet: "Кошка", clichkaPet: "Адовый Монстр", petSignal: "МЯУ!!!!!!!!!!!")
print("Имя животного: \(cat.name). Возвраст животного \(cat.day - cat.birdDay). Кличка питомца: \(cat.clichkaPet). Класс животного: \(cat.classPet). Животное издает звук: \(cat.petSignal)  \n  ")


class Bird: HomePets {
    override func HomePets(name: String, day: Int, birdDay: Int, classPet: String, clichkaPet: String, petSignal: String) {
        super.HomePets(name: name, day: day, birdDay: birdDay, classPet: classPet, clichkaPet: clichkaPet, petSignal: petSignal)
    }
}

let bird: Bird = Bird(clichkaPet: "Сигнализация", classPet: "Птица")
bird.HomePets(name: "Джонни", day: 2019, birdDay: 1999, classPet: "Кошка", clichkaPet: "Сигнализация", petSignal: "В наши края вошел враг!")
print("Имя животного: \(bird.name). Возвраст животного \(bird.day - bird.birdDay). Кличка питомца: \(bird.clichkaPet). Класс животного: \(bird.classPet). Животное издает звук: \(bird.petSignal)  \n  ")
