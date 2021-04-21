import UIKit

// Написать функцию, которая определяет, четное число или нет.

func chetnoe(q: Int) {
    let d = q % 2
    if d == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

chetnoe(q: 5)

// Написать функцию, которая определяет, делится ли число без остатка на 3.

func bezostatka(q: Int) {
    let d = q % 3
    if d == 0 {
        print("Делится")
    } else {
        print("Не делится")
    }
}

bezostatka(q: 7)

// Создать возрастающий массив из 100 чисел.

var mas = [Int](1...100)
print("Возрастающий массив — \(mas)")

// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for (_, element) in mas.enumerated() {
    if (element % 2) == 0 || (element % 3) == 0 {
        mas.remove(at: mas.firstIndex(of: element)!)
    }
}
print("Массив без четных числе и тех, что делятся на 3 — \(mas)")

// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonachi(_ count: Int) -> [Double] {
    var newMas: [Double] = []
    if count == 1 {
        let f0: Double = 0
        newMas.append(f0)
    } else if count == 2{
        let f1: Double = 1
        let f0: Double = 0
        newMas.append(f0)
        newMas.append(f1)
    } else {
        let f1: Double = 1
        let f0: Double = 0
        newMas.append(f0)
        newMas.append(f1)
        var a = 2
        while a < count + 2 {
            let a1 = (newMas[a-1]) + (newMas[a-2])
            newMas.append(a1)
            a+=1
        }
    }
    return newMas
}

print(fibonachi(100))

/* Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
*/

func Prime (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Prime(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (PrimeArray())

//

