import Foundation

class DictionaryManager {

    private(set) var avtoCatalog: [String: Avto] = [:]
    private(set) var vendorCatalog: [String: Vendor] = [:]

    func clearAvto() {
        avtoCatalog = [:]
        print("Словарь автомобилей очищён.")
    }

    func loadDefaultAvto() {
        avtoCatalog = [
            "BMW_X5":       Avto(model: "BMW X5",           cost: 5_800_000),
            "Toyota_Camry": Avto(model: "Toyota Camry",     cost: 2_400_000),
            "Mercedes_E":   Avto(model: "Mercedes E-Class", cost: 4_200_000),
            "Lada_Vesta":   Avto(model: "Lada Vesta",       cost: 980_000)
        ]
        print("Словарь автомобилей заполнен тестовыми данными (\(avtoCatalog.count) эл.).")
    }

    func addAvto(key: String, model: String, cost: Double) {
        avtoCatalog[key] = Avto(model: model, cost: cost)
        print("Добавлен: [\(key)] \(avtoCatalog[key]!)")
    }

    func countAvto() {
        print("Количество автомобилей в словаре: \(avtoCatalog.count)")
    }

    func findAvto(key: String) {
        if let avto = avtoCatalog[key] {
            print("Найдено: [\(key)] \(avto)")
        } else {
            print("Автомобиль с ключом '\(key)' не найден.")
        }
    }

    func printAllAvto() {
        guard !avtoCatalog.isEmpty else {
            print("Словарь автомобилей пуст.")
            return
        }
        print("=== Все автомобили (\(avtoCatalog.count) эл.) ===")
        for (key, avto) in avtoCatalog {
            print("  [\(key)]: \(avto)")
        }
    }

    func updateAvtoCost(key: String, newCost: Double) {
        guard avtoCatalog[key] != nil else {
            print("Автомобиль с ключом '\(key)' не найден.")
            return
        }
        avtoCatalog[key]!.cost = newCost
        print("Стоимость [\(key)] обновлена: \(String(format: "%.2f", newCost)) руб.")
    }

    func sortAvtoByKey() {
        let sorted = avtoCatalog.sorted { $0.key < $1.key }
        print("=== Автомобили по ключу (A→Z) ===")
        for (key, avto) in sorted {
            print("  [\(key)]: \(avto)")
        }
    }

    func sortAvtoByCost() {
        let sorted = avtoCatalog.sorted { $0.value.cost < $1.value.cost }
        print("=== Автомобили по стоимости (↑) ===")
        for (key, avto) in sorted {
            print("  [\(key)]: \(avto)")
        }
    }

    func removeAvto(key: String) {
        if avtoCatalog.removeValue(forKey: key) != nil {
            print("Удалён: [\(key)]")
        } else {
            print("Автомобиль с ключом '\(key)' не найден.")
        }
    }

    func removeAllAvto() {
        avtoCatalog.removeAll()
        print("Все автомобили удалены.")
    }

    func clearVendors() {
        vendorCatalog = [:]
        print("Словарь производителей очищён.")
    }

    func loadDefaultVendors() {
        vendorCatalog = [
            "BMW":      Vendor(name: "BMW Group",                country: "Германия"),
            "Toyota":   Vendor(name: "Toyota Motor Corporation", country: "Япония"),
            "Mercedes": Vendor(name: "Mercedes-Benz Group",      country: "Германия"),
            "Lada":     Vendor(name: "АвтоВАЗ",                  country: "Россия")
        ]
        print("Словарь производителей заполнен тестовыми данными (\(vendorCatalog.count) эл.).")
    }

    func addVendor(key: String, name: String, country: String) {
        vendorCatalog[key] = Vendor(name: name, country: country)
        print("Добавлен: [\(key)] \(vendorCatalog[key]!)")
    }

    func countVendors() {
        print("Количество производителей в словаре: \(vendorCatalog.count)")
    }

    func findVendor(key: String) {
        if let vendor = vendorCatalog[key] {
            print("Найдено: [\(key)] \(vendor)")
        } else {
            print("Производитель с ключом '\(key)' не найден.")
        }
    }

    func printAllVendors() {
        guard !vendorCatalog.isEmpty else {
            print("Словарь производителей пуст.")
            return
        }
        print("=== Все производители (\(vendorCatalog.count) эл.) ===")
        for (key, vendor) in vendorCatalog {
            print("  [\(key)]: \(vendor)")
        }
    }

    func updateVendorCountry(key: String, newCountry: String) {
        guard vendorCatalog[key] != nil else {
            print("Производитель с ключом '\(key)' не найден.")
            return
        }
        vendorCatalog[key]!.country = newCountry
        print("Страна [\(key)] обновлена: \(newCountry)")
    }

    func sortVendorsByKey() {
        let sorted = vendorCatalog.sorted { $0.key < $1.key }
        print("=== Производители по ключу (A→Z) ===")
        for (key, vendor) in sorted {
            print("  [\(key)]: \(vendor)")
        }
    }

    func sortVendorsByCountry() {
        let sorted = vendorCatalog.sorted { $0.value.country < $1.value.country }
        print("=== Производители по стране ===")
        for (key, vendor) in sorted {
            print("  [\(key)]: \(vendor)")
        }
    }

    func removeVendor(key: String) {
        if vendorCatalog.removeValue(forKey: key) != nil {
            print("Удалён: [\(key)]")
        } else {
            print("Производитель с ключом '\(key)' не найден.")
        }
    }

    func removeAllVendors() {
        vendorCatalog.removeAll()
        print("Все производители удалены.")
    }
}
