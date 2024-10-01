import Foundation

struct Person {
    private let firstName: String
    private let lastName: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
