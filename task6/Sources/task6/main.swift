import Foundation

let manager = DictionaryManager()

func printMenu() {
    print("""

    ============================================================
     УПРАВЛЕНИЕ СЛОВАРЯМИ АВТОМОБИЛЕЙ (вариант 8)
    ============================================================
     --- Avto(model, cost) ---
      1.  Очистить словарь авто
      2.  Загрузить тестовые данные
      3.  Добавить автомобиль
      4.  Количество элементов
      5.  Найти авто по ключу
      6.  Показать все авто
      7.  Изменить стоимость авто
      8.  Сортировать по ключу
      9.  Сортировать по стоимости
      10. Удалить авто по ключу
      11. Удалить все авто

     --- Vendor(name, country) ---
      12. Очистить словарь производителей
      13. Загрузить тестовые данные
      14. Добавить производителя
      15. Количество элементов
      16. Найти производителя по ключу
      17. Показать всех производителей
      18. Изменить страну производителя
      19. Сортировать по ключу
      20. Сортировать по стране
      21. Удалить производителя по ключу
      22. Удалить всех производителей

      0.  Выход
    ============================================================
    """)
    print("Выберите пункт:", terminator: " ")
}

while true {
    printMenu()

    guard let input = readLine(), let choice = Int(input) else {
        print("Некорректный ввод, попробуйте снова.")
        continue
    }

    switch choice {
    case 0:
        print("До свидания!")
        exit(0)
    case 1:
        manager.clearAvto()
    case 2:
        manager.loadDefaultAvto()
    case 3:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        print("Введите модель:", terminator: " ")
        let model = readLine() ?? ""
        print("Введите стоимость:", terminator: " ")
        let cost = Double(readLine() ?? "0") ?? 0.0
        manager.addAvto(key: key, model: model, cost: cost)
    case 4:
        manager.countAvto()
    case 5:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        manager.findAvto(key: key)
    case 6:
        manager.printAllAvto()
    case 7:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        print("Новая стоимость:", terminator: " ")
        let cost = Double(readLine() ?? "0") ?? 0.0
        manager.updateAvtoCost(key: key, newCost: cost)
    case 8:
        manager.sortAvtoByKey()
    case 9:
        manager.sortAvtoByCost()
    case 10:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        manager.removeAvto(key: key)
    case 11:
        manager.removeAllAvto()
    case 12:
        manager.clearVendors()
    case 13:
        manager.loadDefaultVendors()
    case 14:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        print("Введите название:", terminator: " ")
        let name = readLine() ?? ""
        print("Введите страну:", terminator: " ")
        let country = readLine() ?? ""
        manager.addVendor(key: key, name: name, country: country)
    case 15:
        manager.countVendors()
    case 16:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        manager.findVendor(key: key)
    case 17:
        manager.printAllVendors()
    case 18:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        print("Новая страна:", terminator: " ")
        let country = readLine() ?? ""
        manager.updateVendorCountry(key: key, newCountry: country)
    case 19:
        manager.sortVendorsByKey()
    case 20:
        manager.sortVendorsByCountry()
    case 21:
        print("Введите ключ:", terminator: " ")
        let key = readLine() ?? ""
        manager.removeVendor(key: key)
    case 22:
        manager.removeAllVendors()
    default:
        print("Неизвестный пункт. Попробуйте снова.")
    }
}
