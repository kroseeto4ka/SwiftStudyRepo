//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPeople()
    }
    
    private func printPeople(people: [User]){
        for person in people {
            print("Full name: \(person.getName().fullName); login: \(person.getLogin()); password: \(person.getPassword())")
        }
    }
    
    private func createPeople(){
        let people = Helper()
        
        people.addName(User(login: "Aboba123", password: "qwerty12345", name: Person(firstName: "Linus", lastName: "Torwalds")))
        people.addName(User(login: "CodeHacker420", password: "$f8K!h27Bf@4", name: Person(firstName: "Bjarne", lastName: "Stroustrup")))
        
        printPeople(people: people.getUsers())
    }
}

