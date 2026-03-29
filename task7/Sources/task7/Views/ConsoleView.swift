struct ConsoleView {

    func display(array: [String]?, title: String) {
        print("\n--- \(title) ---")
        guard let arr = array else {
            print("[массив не инициализирован — nil]")
            return
        }
        if arr.isEmpty {
            print("[пустой массив]")
        } else {
            for (i, s) in arr.enumerated() {
                print("  [\(i)]: \"\(s)\"")
            }
        }
    }

    func displayCount(_ count: Int?, label: String = "Количество элементов") {
        if let c = count {
            print("\(label): \(c)")
        } else {
            print("\(label): массив не инициализирован")
        }
    }

    func show(_ message: String) {
        print(message)
    }

    func prompt(_ message: String) -> String {
        print(message, terminator: ": ")
        return readLine() ?? ""
    }

    func promptInt(_ message: String) -> Int? {
        print(message, terminator: ": ")
        return Int(readLine() ?? "")
    }

    func printMenu() {
        print("""

        ============================================================
         DataManipulator — Обработка массивов строк (вариант 8)
        ============================================================
         1.  Инициализировать пустой массив
         2.  Ввести элементы с консоли
         3.  Вывести массив
         4.  Количество элементов
         5.  Добавить элемент в конец
         6.  Вставить элемент по индексу
         7.  Удалить последний элемент
         8.  Удалить элемент по индексу
         9.  Удалить все элементы
         10. Сортировать по количеству гласных (вариант 8)
         0.  Выход
        ============================================================
        """, terminator: "")
        print("Выберите пункт:", terminator: " ")
    }
}
