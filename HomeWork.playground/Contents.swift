////
////ДЗ:
////Есть рулон бумаги с завода, из которой режут листы для последующей фасовки и продажи. Чтобы бумага годилась для фасовки и продажи, необходимо, чтобы она удовлетворяла определенным требованиям, в частности, подходила под какой-либо формат. Задание:
////Пишем протокол, отвечающий за формат бумаги. Протокол хранит только одно свойство - формат. Сами форматы храним в Перечислении, созданном отдельно.
////Ну и отдельно создаём класс,  пригодной для продажи бумаги с дополнительными свойствами, например, плотность. Проверяем, что всё работает. Класс нужно подписать под протокол формата
//
//
//enum formatList {
//    case A1, A2, A3, A4, A5, A0
//}
//
//protocol List {
//    var format: formatList { get }
//}
//
//class SellListChecker: List {
//    var format: formatList
//    var density: Int
//    var color: String
//
//    func prepareForSell(format: formatList, color: String) {
//        guard  density >= 5 else {
//            print("Бумага формата \(format) пригодна для фасовки. Цвет бумаги \(color). Ее плотность \(density)")
//            return
//        }
//        print("Ошибка! Бумага \(format) не пригодна для фасовки. Ее плотность \(density)")
//    }
//
//    init(format: formatList, density: Int, color: String) {
//        self.format = format
//        self.density = density
//        self.color = color
//    }
//}
//
////Плотность бумаги не должна превышать 5 , если значение превышено , то будет ошибка
//
//let sellA0 = SellListChecker(format: .A0, density: 2, color: "Белый")
//let sellA1 = SellListChecker(format: .A1, density: 26, color: "Черный")
//let sellA2 = SellListChecker(format: .A2, density: 0, color: "Коричневый")
//let sellA3 = SellListChecker(format: .A3, density: 99, color: "Черный")
//let sellA4 = SellListChecker(format: .A4, density: 7, color: "Черно-Белый")
//let sellA5 = SellListChecker(format: .A5, density: 4, color: "Серый")
//
//
//sellA0.prepareForSell(format: .A0, color: "Белый")
//sellA1.prepareForSell(format: .A1, color: "Черный")
//sellA2.prepareForSell(format: .A2, color: "Коричневый")
//sellA3.prepareForSell(format: .A3, color: "Черный")
//sellA4.prepareForSell(format: .A4, color: "Черно-Белый")
//sellA5.prepareForSell(format: .A5, color: "Серый")
//
//
//
//
//



protocol BirthdayType {
    var nameOfImenninik: String { get }
    var age: Int { get }
    var guest: [String] { get }
    
    func gifts() -> Int
    func speech()
    func cake()
}

struct Birthday : BirthdayType {
    var nameOfImenninik: String
    
    var age: Int
    
    var guest: [String]
    
    func gifts() -> Int {
        
    }
    
    func speech() {
        
    }
    
    func cake() {
        
    }
    
    
}
