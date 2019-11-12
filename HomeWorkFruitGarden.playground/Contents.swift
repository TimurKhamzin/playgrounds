//Опишем фруктовый сад (не сок, а настоящий сад).
//Для сада создадим соответствующий класс.
//В саду есть растения (класс Растения) - деревья, кустарники и травянистые растения (подклссы растений).
//Все растения необходимо поместить в один массив - растений.
//Все растения в фруктовом саду плодоносные, то есть с них можно собирать фрукты. На каждом дереве может содержаться некоторое количество Фруктов
//Для фруктов создадим структуру Фрукт с полем: Название.
//Для названий фруктов создадим перечисление с возможными вариантами: яблоко, слива, клубника и др.
//
// Требуется написать метод, который на каждом растении выращивает некое количество фруктов (какое именно количество - вводит пользователь во время использования функции)
// Требуется написать метод, который позволяет собирать фрукты с каждого растения; В дависимости от того, дерево это, кустарник или травянистое растение, человек должен перед сбором фруктов либо принести стремянку, либо собирать стоя, либо присесть. Эта деталь должна быть отражена в консоли.
import UIKit

class FruitGarden {
    var plants: String
        
    init(plants: String) {
        self.plants = plants
    }
}

class Plants: FruitGarden {
    var tree: String //деревья
    var shrubs: String //кустарники
    var otherTrees: String
    var fruitsArray: Array = [FruitGarden]()
    
    init (tree: String, shrubs: String, otherTrees: String, plants: String) {
        self.otherTrees = otherTrees
        self.tree = tree
        self.shrubs = shrubs
        super.init(plants: plants)
    }
    
    func AddFruits() {
    for fruits in fruitsArray {
        if fruits is Plants{
            
        }
        }
    }
}

struct Fruits {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

//деревья
let banana = Plants(tree: "Деревл", shrubs: "Куст", otherTrees: "Трава", plants: "Растения")
//кустарники

//другое

//помещаем все растения в массив
var plantsArray = [FruitGarden]()

