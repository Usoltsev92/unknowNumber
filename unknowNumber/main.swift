import Foundation

// Функция для получения числа от пользователя
func getUserNumber() -> UInt8? {
    guard let input = readLine(), let number = UInt8(input), (1...100).contains(number) else {
        print("Вы ввели некорректное число. Введите число от 1 до 100.")
        return nil
    }
    return number
}

// Функция для проверки числа
func checkNumber(_ userNumber: UInt8, against randomNumber: UInt8) -> Bool {
    if userNumber < randomNumber {
        print("Ваше число меньше загаданного.")
    } else if userNumber > randomNumber {
        print("Ваше число больше загаданного.")
    } else {
        print("Поздравляем! Вы угадали число!")
        return true
    }
    return false
}

// Основная логика игры
func playGame() {
    let randomNumber = UInt8.random(in: 1...100)
    print("Добро пожаловать в игру 'Угадай число'!")
    print("Введите число от 1 до 100 и нажмите ENTER.")
    
    var attempts: UInt8 = 0
    var isGuessed = false
    
    while !isGuessed {
        attempts += 1
        print("Попытка №\(attempts):", terminator: " ")
        
        guard let userNumber = getUserNumber() else {
            continue
        }
        
        isGuessed = checkNumber(userNumber, against: randomNumber)
    }
    
    print("Вы угадали число за \(attempts) попыток!")
}

// Запуск игры
playGame()
