import UIKit

//протоколы - это набор правил , на который мы подписываемся

enum Speciality{
    case iOS, Android, Python, Web
}

protocol Human {
    var name: String { get }
    var lastName: String { get }
    var specialistation: Speciality
    
    func go()
}

protocol Teacher {
    var specialistion: Speciality { get }
     
    func prepareForLesson() -> Bool
}

protocol Developer {
    var specialistation: Speciality { get }
    var exepereance: Int { get }
}


class TeacherInEasyUM: Human, Teacher, Developer {
    var name: String
    var specialistation: Speciality
    var lastName: String
    
    func go() {
        print("Go!")
    }
    
    func prepareForLesson() -> Bool {
        return true
    }
    
    
    
    var exepereance: Int
    
    init(name: String, lastName: String, specialistation: Speciality, exepereance: Int) {
        self.exepereance = exepereance
        self.name = name
        self.lastName = lastName
        self.specialistation = specialistation
    }
    
}


let teacher = TeacherInEasyUM(name: "Fedya", lastName: "Petrov", specialistation: "Android", exepereance: 3)
