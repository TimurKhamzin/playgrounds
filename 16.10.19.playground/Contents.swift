//Инициализация

import UIKit

class User {
    var name: String = ""
    var score: Int = 0
    
    func count(score: Int) {
        self.score += score
        print("Пользователь \(name), Ваш счет \(self.score)")
    }
    
    //init - метод который позволяет инициализирвоать класс
    init() {
        name = "Вася"
        score = 0
    }
    
    //объявляение метода с аргментами
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
}

let user = User()
let user2 = User(name: "Петя", score: 100)

user2.name
user2.score



//Вычесляемые свойства

class Rectange {
    let height: Int
    let width: Int
    let depth: Int
    
    //вычесляемое свойство , можно делать не только в рамках класса
    var volume: Int  {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.depth = depth
        self.width = width
    }
    
}

var rect: Rectange = Rectange(height: 10, width: 20, depth: 30)
print(rect.volume)

///Еще один пример вычесляесых свйоств

class Person {
    var name: String
    var familyName: String
    //fullName - вычисляемое свойство
    //у вычисляемых свойтсв есть еще сеттеры и геттеры, get позволяет получить данные и составить из них свойства
    var fullName: String { get {
               return name + " " + familyName
        }
        set {
            let componentsArray = newValue.components(separatedBy: " ")
            name = componentsArray[0]
            familyName = componentsArray[1]
        }
    }
    
    init (name: String, familyName: String) {
        self.name = name
        self.familyName = familyName
        
    }
}

let person = Person(name: "Вася", familyName: "Пупкин")

print(person.fullName)

person.fullName = "Ольга Петрова"
person.familyName
person.name
