//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    private let textLabel = UILabel()
    private let button = UIButton()
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        view.alpha = 0.9
        
        helper.updateNamesFromRepo() //апдейт имён репозитория
        
        printPeople()
        
        setupLabel()
        setupButton()
        setupStackview()
        view.addSubview(stackView)
        setupLayout()
    }
    
    private func printPeople() {
        for person in helper.getPeople() {
            print(person)
        }
    }
    
    private func setupLabel() {
        let randomPerson = helper.getPeople().randomElement()
        let personName = randomPerson?.getName().fullName
        textLabel.text = "\(personName ?? "No name")";
        textLabel.font = .systemFont(ofSize: 25, weight: .regular)
        textLabel.textColor = .blue
        textLabel.textAlignment = .center
    }
    
    private func setupButton() {
        button.setTitle("Show fullName", for: .normal)
        button.backgroundColor = .green
    }
    
    private func setupStackview() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(button)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        //задал констрейнты привязкой через края, а не центр
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300)
        ])
    }
}

