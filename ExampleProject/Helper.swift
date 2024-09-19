import Foundation

class Helper {
    
    private var people: [User] = []
    
    func getPeople() -> [User] {
        people
    }
    
    func updateNamesFromRepo() {
        var users: UserRepository = UserRepository()
        
        people.append(contentsOf: users.getUsers())
    }
}
