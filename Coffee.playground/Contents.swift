import UIKit

func makeCoffeeIfElse(isHotWater: Bool, isCoffee: Bool) -> String {
    
    
    if isCoffee == true && isHotWater == true {
        print ("Вы можете сделать кофе")
    } else if isCoffee == true && isHotWater == false {
        print ("Вы не можете сделать кофе: вам нужна горячая вода")
    } else if isCoffee == false && isHotWater == true {
        print ("Вы не можете сделать кофе: вам нужны кофейные зерна")
    } else {
        print ("У вас нет ингридиентов для приготовления кофе")
    }
    return ("")
}
var makeCoffeResult = makeCoffeeIfElse(isHotWater: true, isCoffee: false)

print (makeCoffeResult)
