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
        let people = Helper()
        
        people.addName(Person(firstName: "jane", lastName: "doe"))
        people.addName(Person(firstName: "john", lastName: "doe"))
        
        printPeople(people: people.getNames())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPeople()
    }
}

