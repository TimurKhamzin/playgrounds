import UIKit

// создание глобальных переменных

let bigWord = "магнит"
var score: Int = 0
var wordArray = [String]()


 //создание функции с циклом , чтобы любая строка переопределялась в массив символов

func wordToCharArray(word: String) -> [Character] {
    var charArray = [Character]()
    
    for item in word {
        charArray.append(item)
    }
    
    return charArray
}

//создание основной функции , которая отвечает за функционал всей игры
// преобразуем все в бул для того чтобы првоерять только на 0 и 1 - 0 - false 1- true
func mainFunction(checkingWord: String) -> Bool {
    
    //прописываем , чтобы реестр слов не учитывался
    
    let checkingWord = checkingWord.lowercased()
    
    // проверка на исходное слово с помощью guard
    
    guard checkingWord != bigWord else {
        print ("Проверка на исходное слово положительно, слово не подходит")
        return false
    }
    
    //провека на было ли слово загадано ранеее
    
    guard !(wordArray.contains(checkingWord)) else {
        print("Данное слово было загадано ранее")
        return false
    }
    
    //создаем переменные для проверки слов
    
    var bigWordArray = wordToCharArray(word: bigWord)
    
    let smallWordArray = wordToCharArray(word: checkingWord)
    
    var smallWord = ""
    
    //цикл с проверкой guard
    
    for character in smallWordArray {
        guard bigWordArray.contains(character) else {
            print("Слово не может быть составлено")
            return false
        }
        smallWord.append(character)
        
        var i = 0
        
        while bigWordArray[i] != character {
            i += 1
        }
        bigWordArray.remove(at: i)
    }
    
    guard smallWord == checkingWord else {
        print ("Error")
        return false
    }
    
    print ("Вы успешно составили слово \(smallWord)")
    
    score += smallWord.count
    print ("Ваш счет \(score)")
    
    wordArray.append(smallWord)
    return true
}

mainFunction(checkingWord: "мант")

