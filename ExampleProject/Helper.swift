import Foundation

class Helper {
    
    private var people: [Person] = []
    
    func getNames() -> [String] {
        var fullNames: [String] = []
        for person in people {
            fullNames.append(person.getFullName())
        }
        return fullNames
    }
    
    func addName(_ person: Person) {
        people.append(person)
    }
}
