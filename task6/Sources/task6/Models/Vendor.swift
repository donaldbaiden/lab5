struct Vendor: CustomStringConvertible {
    var name: String
    var country: String

    var description: String {
        "\(name) (\(country))"
    }
}
