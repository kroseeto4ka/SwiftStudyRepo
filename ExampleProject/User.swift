//
//  User.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 11.09.2024.
//

import Foundation

struct User {
    var login: String
    var password: String
    var name: Person
    
    init(login: String, password: String, name: Person) {
        self.login = login
        self.password = password
        self.name = name
    }
}
