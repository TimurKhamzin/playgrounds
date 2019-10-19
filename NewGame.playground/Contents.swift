import UIKit

//создание переменных глобальных

let bigWord = "магнитотерапия"
var score: Int = 0
var wordArray = [String]() //массиив в который мы будем заносить слова




// Класс отвечающий за механику игры //Комманд+Alt+Влево
class GameMachanics {
    
    
    
func wordToCharArray(word:String) -> [Character] {
    var charArray = [Character]()
    //append добавляет в массив элемент
    for char in word {
        charArray.append(char)
    }
    
    return charArray
}

    
//Создание основной функции с проверками (отвечающая за процесс игры)

func checkSmallWord(checkingWord: String) -> Int {
    
   let checkingWord = checkingWord.lowercased()
     // проверка на исходное слово (являтся ли составленое слово исходным или нет)
    guard checkingWord != bigWord else {
        print ("Это исходное слово , не шути так!")
        return 0
    }
    
    //Проверка если ли наше слово в нашем массиве , загадывалось ли оно ранее
    guard !(wordArray.contains(checkingWord)) else {
        print ("Слово \(checkingWord) было загадано ранее")
        return 0
    }
    
    
    //Переменные для проверки слова
    
    //переменная где боьшое слово разложиться на массив
    var bigWordArray = wordToCharArray(word: bigWord)
    //переменная для првоерки маленького слова
    let smallWordArray = wordToCharArray(word: checkingWord)
    // Переменная , чтобы склеивать символы в единное слово
    var smallWord = ""
    
    
    
    //Цикл , который будет проверять символы маленького слова в большом слове (каждый из символов) А далее он склеивает символы маленького слова в единное слово
    
    for character in smallWordArray {
        //Проверка есть ли символ в большом слово (проверка посимвольно)
        guard bigWordArray.contains(character) else {
            print ("Слово не может быть сосставлено")
            return 0
        }
        smallWord.append(character) //append Добавил символ к слову
        //исключаем слово из bigWaordArray , чтобы не было повтерояния ссимволов
        var i = 0 // создавние ранжированую переменную для работы в цикле
            
        // если i не равен charcter, то добавляем 1. Этот цикл вычесляет индекс символа в массиве символов большого слова
        while bigWordArray[i] != character {
            i += 1
        }
        //удаляем из массива букву которую определили в большом слове
        bigWordArray.remove(at: i)
    }
    
    //Проверка совпадает ли результат с заданным словом
    
    guard smallWord == checkingWord else {
        print("Error of word integration!")
        return 0
    }
    
    //print ("Вы успешно составили слово \(smallWord)")
    
    //Score - приравниваем очки равные количество символов и вывели пользорвателю количество очков
    
    score = smallWord.count
    //print ("Ваш счет:\(score)")
    
    
    //Добавляем smallWord в WordArray
    wordArray.append(smallWord)
    
    return score
        }
    }

class User {
      var name: String = ""
      var score: Int = 0
        
    //создание метода
        
    func count(score: Int) {
        changeUser()
        
        self.score += score
        print ("Пользователь \(name). Ваш счет: \(score)")
    }
    
    init() {
        name = "Вася"
        score = 0
    }
    
    init(name: String) {
        self.name = name
    }
    
}



let user1: User = User(name: "Вася")
let user2: User = User(name: "Петя")

let gameMechanics = GameMachanics()

var lastUser = user1

func changeUser() {
    print ("\(lastUser.name) Ваш ход!")
    if lastUser.name == user2.name {
        lastUser = user1
    } else {
        lastUser = user2
    }
}

changeUser()
lastUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Мантия"))

changeUser()
lastUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Партия"))
