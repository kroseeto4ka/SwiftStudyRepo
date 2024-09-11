//
//  User.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 11.09.2024.
//

import Foundation

struct User {
    private var login: String
    private var password: String
    private var name: Person
    
    func getName() -> Person {
        return name
    }
    
    init(login: String, password: String, name: Person) {
        self.login = login
        self.password = password
        self.name = name
    }
}
