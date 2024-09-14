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
        users.append(User(login: "Aboba123", password: "qwerty12345", name: Person(firstName: "Linus", lastName: "Torwalds")))
        users.append(User(login: "CodeHacker420", password: "$f8K!h27Bf@4", name: Person(firstName: "Bjarne", lastName: "Stroustrup")))
        
        return users
    }
}
