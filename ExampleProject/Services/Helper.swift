import Foundation

class Helper {
    
    private var people: [User] = []
    
    func getPeople() -> [User] {
        people
    }
    
    func updateNamesFromRepo() {
        people.append(contentsOf: UserRepository().getUsers())
    }
}
