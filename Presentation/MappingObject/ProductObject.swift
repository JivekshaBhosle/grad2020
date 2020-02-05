struct ProductObject: Decodable, Identifiable {
    
    private(set) public var id: String
    private(set) public var title: String
    private(set) public var subtitle: String?
    private(set) public var full: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case subtitle = "subtitle"
        case full = "full"
    }
}
