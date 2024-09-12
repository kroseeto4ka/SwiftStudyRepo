import Foundation

struct Person {
    private var firstName: String
    private var lastName: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
