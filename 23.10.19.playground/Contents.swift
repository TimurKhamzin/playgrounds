import UIKit

//структуры не могут наследоваться
//переопределяться тоже не может
//описывает типы свойств

struct User {
    let name: String
    let dateOfBirthday: Int
    
    func sayHello() {
        print("Hello")
    }
}

let user = User(name: "sdf", dateOfBirthday: 1233)

user.sayHello()


//Проверка и приведение типов

class Vehicle {
    var materialCorpus: String
    
    init(materialCorpus: String) {
        self.materialCorpus = materialCorpus
    }
}

class Car: Vehicle {
    var enginePower: Int
    
    //в инициализацтор передаем инфициализатор суперкласса
    init (enginePower: Int, materialCorpus: String) {
        self.enginePower = enginePower
        super.init(materialCorpus: materialCorpus)
    }
}

//class Mercedes: Car {
//
//    var roovColor: String
//
//    init(roovColor: String, materialCorpus: String, enginePower: Int) {
//        self.roovColor = roovColor
//        super.init(enginePower: enginePower, materialCorpus: materialCorpus)
//    }
//}

class Bicycle: Vehicle {
    var lengthOfFrame: Int
    
    init(lengthOfFrame: Int, materialCorpus: String) {
        self.lengthOfFrame = lengthOfFrame
        super.init(materialCorpus: materialCorpus)
    }
}

//Проверка типа

let mers = Car(enginePower: 250, materialCorpus: "Steel")
let volvo = Car(enginePower: 200, materialCorpus: "Steel")

let forward = Bicycle(lengthOfFrame: 17, materialCorpus: "Carbon")
let stelth = Bicycle(lengthOfFrame: 22, materialCorpus: "Aluminium")
let kama = Bicycle(lengthOfFrame: 15, materialCorpus: "Chugun")

var vehicleArray = [Vehicle]()
vehicleArray.append(mers)
vehicleArray.append(volvo)
vehicleArray.append(forward)
vehicleArray.append(stelth)
vehicleArray.append(kama)

print("\(vehicleArray[4].materialCorpus)")

var cars = 0
var bicycle = 0

for vehicle in vehicleArray {
    if vehicle is Bicycle {
        bicycle += 1
    } else {
        cars += 1
    }
}

print("Count of Bicycles = \(bicycle)")
print("Count of Cars = \(cars)")


//приведение типов

var bicyclesArray: Array = [Bicycle]()
var carsArray: Array = [Car]()

for vehicle in vehicleArray {
    if vehicle is Bicycle {
        let sureBike = vehicle as! Bicycle
        bicyclesArray.append(sureBike)
        bicycle += 1
        
      } else if vehicle is Car{
        let sureCar = vehicle as! Car
        carsArray.append(sureCar)
          cars += 1
      }
}

for bike in bicyclesArray {
    print(bike.lengthOfFrame)
}

// Типы данных AnyObject и Any

class A {
    
}

class B {
    
}

class C {
    
}

struct D {
    
}

enum E {
    case b
    case a
}

let a = A()
let b = A()
let c = A()
let d = B()
let e = C()

let f = D()

let g = E.a

let arrayObjects: [AnyObject] = [a,b,c,d,e] //в AnyObject можно засунуть только классы
let arrayObject1: [Any] = [a,b,c,d,e,f,g,5, "шесть", 0.5] //в Any можно засунуть любой элемент , кроме nil

for i in arrayObject1 {
    switch i {
    case let item as Int:
    print("\(item) as Int")
    default:
    print("\(i) - this is other")
    }
}


// расширения - extension - позволяет расширить функционал класса и структуры

extension Int {
    var isChet: Bool {
        if self % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    func power(int: Int) -> Int {
        
        var integer = int
        var counter: Int = 1
        
        while integer > 0 {
            counter *= self
            integer -= 1
        }
        
        return counter
    }

}


var integer: Int = 2
integer.isChet

integer.power(int: 3)

