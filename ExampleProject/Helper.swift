import Foundation

class Helper {
    
    private var people: [User] = []
    
    func getPeople() -> [User] {
        people
    }
    
    func getNames() -> [String] {
        var fullNames: [String] = []
        
        for person in people {
            fullNames.append(person.getName().fullName)
        }
        
        return fullNames
    }
    
    func addName(_ user: User) {
        people.append(user)
    }
    
    func addMultipleNames(_ users: [User]){
        for user in users{
            people.append(user)
        }
    }
}
