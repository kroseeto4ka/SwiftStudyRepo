import Foundation

class Helper {
    
    private var people: [Person]
    
    public func addName(firstName: String, lastName: String) {
        people.append(Person(firstName: firstName, lastName: lastName))
    }
    
    public func getNames() -> [String] {
        var fullNames: [String] = []
        for person in people {
            fullNames.append(person.getFullName())
        }
        return fullNames
    }
    
    public func printNames(){
        for person in getNames(){
            print(person)
        }
    }
    
    init() {
        people = []
    }
}
