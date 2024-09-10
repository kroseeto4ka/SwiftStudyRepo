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
        
        let people: Helper = Helper()
        
        people.addName(firstName: "jane", lastName: "doe")
        people.addName(firstName: "john", lastName: "doe")
        
        people.printNames()
    }


}

