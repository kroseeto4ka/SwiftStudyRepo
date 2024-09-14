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
        view.alpha = CGFloat(0.9)
        
        printPeople()
    }
    
    private func printPeople(){
        let people: UserRepository = UserRepository()
        
        for person in people.getUsers() {
            print("Full name: \(person.getName().fullName); login: \(person.getLogin()); password: \(person.getPassword())")
        }
    }
}

