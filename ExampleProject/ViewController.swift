//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    private let textLabel = UILabel()
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    
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
        
        helper.updateNamesFromRepo() //прописал в этой функции, чтобы не прописывать в функциях генерации имен в консоль и на лейбл
        
        printPeople()
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(button)
    }
    
    private func printPeople(){
        for person in helper.getPeople() {
            print(person)
        }
    }
    
    private func setupLabel(){
        let randomPerson = helper.getPeople().randomElement()
        let personName = randomPerson?.getName().fullName
        textLabel.text = "\(personName ?? "No name")";
        textLabel.font = .systemFont(ofSize: 25, weight: .regular)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 50) // увеличил самостоятельно ширину, тк имена не влезали в это поле
    }
}

