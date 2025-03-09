//
//  main.swift
//  unknowNumber
//
//  Created by Александр on 09.03.2025.
//

import Foundation

// Создаем случайное число
let randomNumber = Int.random(in: 1...100)
print("Введите число от 1 до 100 и нажмите ENTER")

// Флажок победы
var flag = false

repeat {
    // Попытка использования введенного значения
    guard let userNumber = Int(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова.")
        continue
    }
    
    // Проверка введенного числа
    if userNumber < randomNumber {
        print("Вы ввели число меньше задуманного.")
    } else if userNumber > randomNumber {
        print("Вы ввели число больше задуманного.")
    } else {
        print("Вы наконец-то угадали!!!")
        flag = true
    }
} while !flag
