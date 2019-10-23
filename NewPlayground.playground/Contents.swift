
/*
Создать интерфейс Кадровой службы. Регистрируются компании, сотрудники. Сотрудников можно принять и уволить. Данные, необходимые у сотрудника: ФИО, Должность.

Создать класс Компания.
Поля класса:
Название
Сотрудники (Массив класса Сотрудник)

Класс Сотрудник:
Поля:
ФИО (кортеж)
Должность
 
*/


//Создаём класс "Работник"
class Employee {
    //Кортеж ФИО
    let fio: (lastName: String, firstName: String, fatherName: String)
    //Должность
    var position: String
    var bollet: Int
    
    //Инициализатор класса "Работник"
    init(fio: (lastName: String, firstName: String, fatherName: String), position: String, bollet: Int) {
        self.fio = fio
        self.position = position
        self.bollet = bollet
    }
}

//Создаём класс "Компания"
class Company {
    
    let companyName: String
    var employeesDict = [Int:Employee]()
    var id: Int = 1 //Табельный номер сотрудника
    var sickLeave: Array = [String]() //создание пустого массива , чтобы доавблять сотрудников которые уходят на больничный
    
    init(companyName: String) {
        self.companyName = companyName
    }
    

    
    //Метод, Добавляющий сотрудника в компанию
    func addEmloyee(employee: Employee) {
        employeesDict [id] = employee
        id += 1
    }
    
    //Метод, увольняющий сотрудника
    func removeEmployee(employee: Int) {
        guard employeesDict.keys.contains(employee) else {
            print("Employee is not found")
            return
        }
        employeesDict.removeValue(forKey: employee)
        print ("Employee is delete")
    }
    
    // метод отправляющий сотрудника на больничный
    
    func addEmployeeToSickLeave(employee: Employee) {
        if employee.bollet == 1 {
            print ("\(employee) на больничном")
        } else {
            print ("\(employee) работает")
        }
    }
    
    func printNoSickLeaveEmployees() {
        print("\(employee.bollet)")
    }
    
    //Метод, печатающий действующих сотрудников компании
    func printExistedEmployees() {
        for (_,value) in employeesDict {
            print(value.fio.lastName)
        }
    }
}

//Создание экземпляра Компании (конкретной компании)
let company1 = Company(companyName: "Roga & Kopyta")

//Создание экземпляра Работника (конкретнго Работника)
var employee1: Employee = Employee(fio: (lastName: "Pupkin1", firstName: "Victor", fatherName: "Petrovith"), position: "CEO1", bollet: 1)
var employee2: Employee = Employee(fio: (lastName: "Pupkin2", firstName: "Victor", fatherName: "Petrovith"), position: "CEO2", bollet: 0)
var employee3: Employee = Employee(fio: (lastName: "Pupkin3", firstName: "Victor", fatherName: "Petrovith"), position: "CEO3", bollet: 1)
var employee4: Employee = Employee(fio: (lastName: "Pupkin4", firstName: "Victor", fatherName: "Petrovith"), position: "CEO4", bollet: 0)




//Добавляем работника в компанию
company1.addEmloyee(employee: employee1)
company1.addEmloyee(employee: employee2)
company1.addEmloyee(employee: employee3)
company1.addEmloyee(employee: employee4)

//Выводим сотрудников , которые не на больничном
print(company1.employeesDict[1]!.fio.firstName + " " + company1.employeesDict[1]!.fio.lastName)

//Увольняем сотрудника из компании
company1.removeEmployee(employee: 1)

//Печатаем сотрудников компании
company1.printExistedEmployees()

company1.printNoSickLeaveEmployees()


// ДЗ
// Создать метод, отправляющий сотрудника на больничный
// Создать метод, печатающий ФИО сотрудников, которые не на больничном, а также количество.





