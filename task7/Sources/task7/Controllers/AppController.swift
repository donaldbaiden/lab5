class AppController {

    private let model: DataManipulator
    private let view: ConsoleView

    init() {
        model = DataManipulator(strings: nil)
        view  = ConsoleView()
    }

    func run() {
        view.show("=== Запуск DataManipulator ===")

        while true {
            view.printMenu()

            guard let line = readLine(), let choice = Int(line) else {
                view.show("Некорректный ввод, попробуйте снова.")
                continue
            }

            switch choice {
            case 0:
                view.show("Выход из приложения.")
                return
            case 1:
                model.initEmpty()
                view.show("Пустой массив инициализирован.")
            case 2:
                inputElements()
            case 3:
                view.display(array: model.strings, title: "Текущий массив")
            case 4:
                view.displayCount(model.count)
            case 5:
                let el = view.prompt("Введите строку для добавления")
                model.append(el)
                view.show("Добавлено: \"\(el)\"")
            case 6:
                insertAtIndex()
            case 7:
                if let removed = model.removeLast() {
                    view.show("Удалён последний элемент: \"\(removed)\"")
                } else {
                    view.show("Массив пуст или не инициализирован.")
                }
            case 8:
                removeAtIndex()
            case 9:
                model.removeAll()
                view.show("Все элементы удалены.")
            case 10:
                if let sorted = model.sortedByVowelCount() {
                    view.display(array: sorted, title: "Отсортировано по числу гласных (↑)")
                } else {
                    view.show("Массив не инициализирован.")
                }
            default:
                view.show("Неизвестный пункт. Попробуйте снова.")
            }
        }
    }

    private func inputElements() {
        guard model.strings != nil else {
            view.show("Сначала инициализируйте массив (пункт 1).")
            return
        }
        guard let n = view.promptInt("Сколько элементов ввести"), n > 0 else {
            view.show("Некорректное количество.")
            return
        }
        for i in 0..<n {
            let el = view.prompt("  Элемент [\(i)]")
            model.append(el)
        }
        view.show("Добавлено \(n) элементов.")
    }

    private func insertAtIndex() {
        guard let idx = view.promptInt("Введите индекс") else {
            view.show("Некорректный индекс.")
            return
        }
        let el = view.prompt("Введите строку")
        if model.insert(el, at: idx) {
            view.show("Вставлено \"\(el)\" по индексу \(idx).")
        } else {
            view.show("Некорректный индекс или массив не инициализирован.")
        }
    }

    private func removeAtIndex() {
        guard let idx = view.promptInt("Введите индекс") else {
            view.show("Некорректный индекс.")
            return
        }
        if let removed = model.remove(at: idx) {
            view.show("Удалён элемент [\(idx)]: \"\(removed)\"")
        } else {
            view.show("Некорректный индекс или массив не инициализирован.")
        }
    }
}
