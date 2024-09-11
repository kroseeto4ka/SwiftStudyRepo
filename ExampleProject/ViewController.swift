//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    func printPeople(people: [String]){
        for person in people{
            print(person)
        }
    }
    
    func createPeople(){
        var people = Helper()
        
        people.addName(User(login: "Aboba123", password: "qwerty12345", name: Person(firstName: "Linus", lastName: "Torwalds")))
        people.addName(User(login: "CodeHacker420", password: "$f8K!h27Bf@4", name: Person(firstName: "Bjarne", lastName: "Stroustrup")))
        
        printPeople(people: people.getNames()) 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPeople()
    }
}

