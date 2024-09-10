//
//  Person.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import Foundation

class Person {
    public var firstName: String
    public var lastName: String
    
    public var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
