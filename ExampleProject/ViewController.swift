//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    private let textLabel = UILabel()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show fullName", for: .normal)
        button.backgroundColor = .green 
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.alpha = 0.9
        
        printPeople()
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(button)
    }
    
    private func printPeople(){
        for person in setupNames().getNames() {
            print(person)
        }
    }
    
    private func setupLabel(){
        let randomPerson = setupNames().getPeople().randomElement()
        let personName = randomPerson?.getName().fullName
        textLabel.text = "\(personName ?? "No name")";
        textLabel.font = .systemFont(ofSize: 25, weight: .regular)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 50) // увеличил самостоятельно ширину, тк имена не влезали в это поле
    }
    
    //вынес генерацию имен в отдельную функцию, чтобы они могли выводиться и на экран, и в консоль
    private func setupNames() -> Helper{
        let people: Helper = Helper()
        
        people.addUsers([User(login: "Aboba123", password: "qwerty12345", name: Person(firstName: "Linus", lastName: "Torwalds"))])
        people.addUsers([User(login: "CodeHacker420", password: "$f8K!h27Bf@4", name: Person(firstName: "Bjarne", lastName: "Stroustrup"))])
        
        return people
    }
}

