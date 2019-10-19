import UIKit


//создание класса пользователь со свойствами имя и счет

class User {
    var name: String = ""
    var score: Int = 0
    
//создание метода
    
    func addToUserScore(score: Int) {
        self.score = score
        print("User's score: \(self.score).")
    }

}
//создание экзамеляра класса в количестве двух штук

let firstUser: User = User()
let secondUser: User = User()
//First User
firstUser.name = "Петр"

//Second User
secondUser.name = "Вася"

print ("\(firstUser.name) - first user.  \(secondUser.name) - second user.")
//очки для первого пользователя , в консоле будет 10
firstUser.addToUserScore(score: 10)
firstUser.addToUserScore(score: 10)
//очки для второго пользователя , в консоле будет 20
secondUser.addToUserScore(score: 20)



