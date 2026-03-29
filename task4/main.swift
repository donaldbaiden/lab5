import Foundation

func digits(of number: Int) -> (hundreds: Int, tens: Int, units: Int) {
    let h = number / 100
    let t = (number / 10) % 10
    let u = number % 10
    return (h, t, u)
}

func isSumTwoDigit(_ number: Int) -> Bool {
    let d = digits(of: number)
    let sum = d.hundreds + d.tens + d.units
    return sum >= 10 && sum <= 99
}

func isProductThreeDigit(_ number: Int) -> Bool {
    let d = digits(of: number)
    let product = d.hundreds * d.tens * d.units
    return product >= 100 && product <= 999
}

print("Введите трёхзначное число (100–999):", terminator: " ")

guard let line = readLine(),
      let number = Int(line),
      number >= 100 && number <= 999 else {
    print("Ошибка: введите целое число от 100 до 999")
    exit(1)
}

let d = digits(of: number)
let sum = d.hundreds + d.tens + d.units
let product = d.hundreds * d.tens * d.units

print("Число:              \(number)")
print("Цифры:              \(d.hundreds), \(d.tens), \(d.units)")
print("Сумма цифр:         \(sum) — \(isSumTwoDigit(number) ? "двузначное ✓" : "не двузначное ✗")")
print("Произведение цифр:  \(product) — \(isProductThreeDigit(number) ? "трёхзначное ✓" : "не трёхзначное ✗")")
