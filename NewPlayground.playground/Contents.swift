import UIKit

//Создание Класса сотрудник
class Employee {
    //если мы не задаем значения , то ставим : , если задаем значения то ставим =
    let fio: (lastName: String, firstName: String, fatherName: String) //это кортеж
    //создание переменной (константы) позиции сотруника
    let position: String
    
    //Инициализация класса
    init(fio: ( lastName: String, firstName: String, fatherName: String), position: String) {
        self.fio = fio
        self.position = position
    }
    
}



//Создание Класса Компания
class Company {
    //Создание переменных (название компании, айди сотрудника, словарь сотрудников в которых есть два значения - айди и имя)
    let companyName: String
    var id: Int = 1
    var emloyeesDictionary = [Int:Employee]()
    
    //инициализация класса
    init(companyName: String) {
        self.companyName = companyName
    }
    
    //Добавление сотрудника
    func addEmployeeToDictionary(employee: Employee) {
        emloyeesDictionary [id] = employee
        id += 1
    }
    
    
    //Удаление сотрудника
    func removeEmployee(employee: Int) {
        guard emloyeesDictionary.keys.contains(employee) else {
            print("Employee is not found")
            return
        }
        emloyeesDictionary.removeValue(forKey: employee)
        print("Employee is delete")
    }
    
    //Вывод в консоль оставшихся сотрудников
    func printToConsoleAllEmployees() {
        for (key,value) in emloyeesDictionary {
            print(value.fio.fatherName)
        }
    }
}

let company1 = Company(companyName: "IT-Company")
//print(company1.companyName)

var employee1 = Employee(fio: (lastName: "Pypkin", firstName: "Victor", fatherName: "Aleekseevich"), position: "SEO")

company1.addEmployeeToDictionary(employee: employee1)
print(company1.emloyeesDictionary[1]!.fio.firstName)

company1.printToConsoleAllEmployees()

