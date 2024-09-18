//
//  UserRepository.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 14.09.2024.
//

import Foundation

class UserRepository {
    var users: [User] = []
    
    func getUsers() -> [User]{
        return users
    }
    
    // добавил метод в класс, чтобы не хранить значения
    func addUsers(_ newUsers: [User]) {
        users.append(contentsOf: newUsers)
    }
}
