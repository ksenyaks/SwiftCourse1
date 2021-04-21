import UIKit

// Решить квадратное уравнение
var a = 7
var b = 3
var c = 10
var D = (b*b) - 4 * a * c

if D > 0 {
    print("Уравнение не имеет корней")
}; if D == 0 {
    print("Уравнение имеет один корень")
} else {
    print("Уравнение имеет два корня")
}

// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
var k1: Float = 3
var k2: Float = 5
var gip: Float = sqrt((k1 * k1) + (k2 * k2))
var sq: Float = (k1 * k2)/2
var per: Float = k1 + k2 + gip

print("Площадь = \(sq), периметр = \(per), гипотенуза = \(gip)")

//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

let v: Double = 1000
let percent: Double = 10
var totalsum1 = (v * (percent/100) + 1000)
var totalsum2 = (totalsum1 * (percent/100)) + totalsum1
var totalsum3 = (totalsum2 * (percent/100)) + totalsum2
var totalsum4 = (totalsum3 * (percent/100)) + totalsum3
var totalsum5 = (totalsum4 * (percent/100)) + totalsum4
print("Сумма вклада через 5 лет будет \(totalsum5)")


// второй вариант через while
let s: Double = 1000
let p: Double = 10
var i = 0
var resultsum = (s * p/100) + s

while i < 4 {
    resultsum += Double(resultsum * p/100)
    i += 1
}
print("Сумма вклада через 5 лет будет \(resultsum)")
