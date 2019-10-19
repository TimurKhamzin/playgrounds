import UIKit

class User {
    var name: String
    var score: Int = 0



    func count(score: Int){
       self.score += score
        print("Пользователь \(name), ваш счет \(self.score)")
    }

    //Init - метод, позволяющий инициализировать класс
    init() {
        name = "Вася"
        score = 0
    }

    //Применяется для внешней инициализации экземпляра класса при его создании
    init(name: String) {
        self.name = name
    }
}

let user1 = User(name: "Вася")
let user2 = User(name: "Петя")


user2.name
user1.count(score: 10)

//Вычисляемые свойства

class Rectange {
    let height: Int
    let width: Int
    let depth: Int

    var volume: Int {
        return height * width * depth
    }

    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}

var rect: Rectange = Rectange(height: 10, width: 20, depth: 30)
print(rect.volume)

class Person {
    var name: String
    var familyName: String
    //fullName - вычисляемое свойство
    var fullName: String {
        get { //get - позволяет получить данные и составить из них свойство
            return name + " " + familyName
        }
        set { //позволяет пользователю задать значение вычисляемого свойства и разложить его на значения свойств экземпляра
            let componentsArray = newValue.components(separatedBy: " ")
            name = componentsArray[0]
            familyName = componentsArray[1]
        }

    }

    init(name: String, familyName: String) {
        self.name = name
        self.familyName = familyName
    }
}

let person = Person(name: "Вася", familyName: "Пупкин")

person.fullName = "Ольга Петрова"
person.familyName
person.name
