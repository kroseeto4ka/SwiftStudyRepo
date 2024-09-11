import Foundation

struct Helper {
    
    private var people: [User] = []
    
    func getNames() -> [String] {
        var fullNames: [String] = []
        for person in people {
            fullNames.append(person.name.getFullName())
        }
        return fullNames
    }
    
    mutating func addName(_ person: User) {
        people.append(person)
    }
}
