//
//  User.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 11.09.2024.
//

import Foundation

struct User {
    
    private let login: String
    private let password: String
    private let name: Person
    
    func getName() -> Person {
        name
    }
    
    func getPassword() -> String {
        password
    }
    
    func getLogin() -> String {
        login
    }
    
    init(login: String, password: String, name: Person) {
        self.login = login
        self.password = password
        self.name = name
    }
}
