import Foundation

class Helper {
    
    private var people = UserRepository()
    
    func getPeople() -> [User] {
        people.getUsers()
    }
    
    func getNames() -> [String] {
        var fullNames: [String] = []
        
        for person in UserRepository().getUsers() {
            fullNames.append(person.getName().fullName)
        }
        
        return fullNames
    }
    
    func addUsers(_ users: [User]){
        people.addUsers(users)
    }
}
