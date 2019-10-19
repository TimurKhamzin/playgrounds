import UIKit


//Классы - основа ООП, является ш

class Vechile {
    
    //Cвойства:
    var mark: String = ""
    var color: String = ""
    
    //Методы:
    func iGoWithVehicle(mark: String, color: String) {
        self.mark = mark //self указывает то переменная является свойсвтойм класса
        self.color = color
        print("I go with vehicle \(self.mark). Color is \(self.color)")
    }
    
}

//создание экзамеляра класса , в скобках мы записываем аргументы

let car: Vechile = Vechile()
car.mark = "Mercedes"
car.color = "Red"


print ("I buy new \(car.mark). It color is \(car.color)")


car.iGoWithVehicle(mark: "Mercedes", color: "Red")




//Наследование классов , мы можем создать класс на основе уже созданного класса

class Car: Vechile {
    var enginePower: Int = 0
    var wheelsRadius: Int = 0
    
    //переопредлеения метода со старого класса
    
    override func iGoWithVehicle(mark: String, color: String) {
        //Служит для сохранения старого метода (родиетля)
        super.iGoWithVehicle(mark: mark, color: color)
        print ("I go with vehicle \(mark). Color is \(color). Engine power is \(self.enginePower) and wheels Radius is \(wheelsRadius)")
    }
}

let car1: Car = Car()
car1.enginePower = 220
car1.wheelsRadius = 17
car1.iGoWithVehicle(mark: "Bentley", color: "Black")
