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
        
        view.backgroundColor = .magenta
        view.alpha = 0.9
        
        printPeople()
    }
    
    private func printPeople(){
        for person in getPeopleArray() {
            print("Full name: \(person.getName().fullName); login: \(person.getLogin()); password: \(person.getPassword())")
        }
    }
    
    private func getPeopleArray() -> [User] {
        let people: UserRepository = UserRepository()
        
        return people.getUsers()
    }
}

