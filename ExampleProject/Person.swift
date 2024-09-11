import Foundation

class Person {
    private var firstName: String
    private var lastName: String
    
    private var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    func getFullName() -> String {
        fullName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
