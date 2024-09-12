import Foundation

class Helper {
    
    var people: [User] = []
    
    func getUsers() -> [User] {
        return people
    }
    
    func getNames() -> [String] {
        var fullNames: [String] = []
        
        for person in people {
            fullNames.append(person.getName().fullName)
        }
        
        return fullNames
    }
    
    func addName(_ person: User) {
        people.append(person)
    }
}
