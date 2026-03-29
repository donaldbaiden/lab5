import Foundation

struct Avto: CustomStringConvertible {
    var model: String
    var cost: Double

    var description: String {
        "\(model) — \(String(format: "%.2f", cost)) руб."
    }
}
