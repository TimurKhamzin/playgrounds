import UIKit

//Global Variables
let bigWord = "магнитотерапия"
var score: Int = 0
var wordArray = [String]()


//Класс, отвечающий за механику игры
class GameMechanics {
    
    //Функция, раскладывающая любую строку в массив символов
    func wordToCharArray(word: String) -> [Character] {
        var charArray = [Character]()
        
        for char in word {
            charArray.append(char)
        }
        
        return charArray
    }
    
    //Функция, отвечающая за процесс игры
    func checkSmallWord(checkingWord: String) -> Int {
        
        //
        let checkingWord = checkingWord.lowercased()
        
        //Проверка, не является ли составленное слово исходным словом
        guard checkingWord != bigWord else {
            print("Это исходное слово! Не шути так!")
            return 0
        }
        
        //Проверка, было ли составлено это слово ранее
        
        guard !(wordArray.contains(checkingWord)) else {
            print("Слово \(checkingWord) уже было составлено ранее!")
            return 0
        }
        
        //Переменные, необходимые для проверки слова
        var bigWordArray = wordToCharArray(word: bigWord)
        let smallWordArray = wordToCharArray(word: checkingWord)
        var smallWord = ""
        
        //Цикл, проверяющий, есть ли каждый из символов маленького слова в большом слове. А далее склеивает символы маленького слова в единое слово.
        
        for character in smallWordArray {
            
            //Проверка: Есть ли символ в большом слове
            guard bigWordArray.contains(character) else {
                print("Это слово не может быть составлено!")
                return 0
            }
            smallWord.append(character)//Добавил символ к слову
            
            var i = 0 //Создал ранжированную переменную
            
            //Пишем цикл, который вычисляет индекс символа в массиве символов большого слова
            while bigWordArray[i] != character {
                i += 1
            }
            //Удаляем использованную букву из большого слова
            bigWordArray.remove(at: i)
        }
        
        //Совпадает ли результат с заданным словом:
        guard smallWord == checkingWord else {
            print("Error of word integration!")
            return 0
        }
        
        score = smallWord.count //добавили очки, равные количеству символов, к счету
        wordArray.append(smallWord) //добавляем слово в массив ранее составленных слов
        return score
    }
}//alt + cmd + <-

//Класс, отвечающий за хранение информации о пользователе.
class User {
    var name: String
    var score: Int = 0
    
    func count(score: Int){
        
        changeUser()
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


let user1: User = User(name: "Вася")
let user2: User = User(name: "Петя")



let gameMechanics = GameMechanics()


var currentUser = user1

func changeUser() {
    print("\(currentUser.name), Ваш ход!")
    
    if currentUser.name == user2.name {
        currentUser = user1

    } else {
        currentUser = user2
    }
    

}


currentUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Мантия"))

currentUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Торт"))

currentUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Магнит"))

currentUser.count(score: gameMechanics.checkSmallWord(checkingWord: "Терапия"))


user2.name
user2.score
