import Foundation

struct Helper {
    
    private var people: [User] = []
    
    
    //функция возвращает только имена, тк в задании не сказано выводить логин или пароль
    func getNames() -> [String] {
        var fullNames: [String] = []
        for person in people {
            fullNames.append(person.getName().getFullName())
        }
        return fullNames
    }
    
    //mutating используется, тк метод меняет значения в структурах, которые являются типом значения
    mutating func addName(_ person: User) {
        people.append(person)
    }
}
