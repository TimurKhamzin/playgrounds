//опциональные типы , для их создания нужно
// Опциоаналы применяются при когда передаешь сетевой запрос и данные могут прийти или не прийти , при этом ты создаешь для каждого элемента опциональные значения , чтобы не было ошибок
//создание словаря с опиционалом
var questions = [String: String?]()

//Alex - ключ , а за = значение
questions["Alex"] = "Как создать переменную?"
questions["Timur"] = "Как выполнить задание 3 в ДЗ"
questions["Ivan"] = "Где я?"
questions["Alexey"] = nil //полное отсутсиве значения

//перебор массива questions, чтобы не было Optional = надо добавить константу , в нашем случае if let question и приравнять к нему переменную из цикла - value (для данной консутркции опционал обязателен)

for(key,value) in questions {
    if let question = value {
        print("\(key) say: \(question)")
    }
}

/// Перечисления - имеет синтаксис

enum IsHere {
    case inRoom
    case online
}
//создание массива
var studentsArray = ["Alex", "Timur", "Ivan", "Tatyana", "Alex"]
var isHereToday: [IsHere?] = [.inRoom, .online , .inRoom , nil, .online]

for (index, student) in studentsArray.enumerated() {
    if isHereToday[index] == .inRoom {
        print ("\(student) in Room today")
    } else if isHereToday[index] == .online {
        print ("\(student) in Online")
    } else {
        print ("i don't know where \(student) today")
    }
    
}


/// калькулятор c перечислением

enum Operation {
    case plus
    case minus
    case umnojenie
    case delenie
}

func oper (first: Double, second: Double, toDo: Operation) -> Double {
    if toDo == .plus {
        return (first + second)
    } else if toDo == .umnojenie {
        return (first * second)
    } else if toDo == .minus {
        return (first - second)
    } else {
        return (first / second)
    }
}

print(oper(first: 30, second: 10, toDo: .umnojenie))


/// Кортежи

let car = (color: "Red", power: 255, mark: "Chrysler") //является кортежем

print(car)

print("i want to buy car \(car.color) \(car.mark). Engine have \(car.power) HP")

