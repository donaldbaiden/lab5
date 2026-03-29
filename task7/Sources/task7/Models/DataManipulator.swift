class DataManipulator {

    var strings: [String]?

    init(strings: [String]? = nil) {
        self.strings = strings
    }

    func initEmpty() {
        strings = []
    }

    var count: Int? { strings?.count }

    func append(_ element: String) {
        strings?.append(element)
    }

    @discardableResult
    func insert(_ element: String, at index: Int) -> Bool {
        guard var arr = strings, index >= 0, index <= arr.count else { return false }
        arr.insert(element, at: index)
        strings = arr
        return true
    }

    func removeLast() -> String? {
        guard strings?.isEmpty == false else { return nil }
        return strings?.removeLast()
    }

    func remove(at index: Int) -> String? {
        guard var arr = strings, index >= 0, index < arr.count else { return nil }
        let removed = arr.remove(at: index)
        strings = arr
        return removed
    }

    func removeAll() {
        strings?.removeAll()
    }

    private func vowelCount(in str: String) -> Int {
        let vowels: Set<Character> = [
            "a","e","i","o","u","A","E","I","O","U",
            "а","е","ё","и","о","у","ы","э","ю","я",
            "А","Е","Ё","И","О","У","Ы","Э","Ю","Я"
        ]
        return str.filter { vowels.contains($0) }.count
    }

    func sortedByVowelCount() -> [String]? {
        return strings?.sorted { vowelCount(in: $0) < vowelCount(in: $1) }
    }
}
