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
    private let buttonContainerView = UIView()
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helper.updateNamesFromRepo() //апдейт имён репозитория
        
        printPeople()
        
        setupLabel()
        setupButtonView()
        setupButton()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
        setupView()
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
        textLabel.font = .systemFont(ofSize: 25, weight: .heavy)
        textLabel.textColor = .systemOrange
        textLabel.textAlignment = .center
    }
    
    private func setupButton() {
        button.setTitle("Show fullName", for: .normal)
        button.setTitleColor(.systemOrange, for: button.state)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 20
        
        buttonContainerView.addSubview(button)
    }
    
    //создал стек для отображения тени у кнопки
    private func setupButtonView() {
        buttonContainerView.layer.shadowColor = UIColor.systemOrange.cgColor
        buttonContainerView.layer.shadowOffset = CGSize(width: 10, height: 10)
        buttonContainerView.layer.shadowOpacity = 1
        buttonContainerView.layer.shadowRadius = 10
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(buttonContainerView)
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor, UIColor.systemPink.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        buttonContainerView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //задал констрейнты стека привязкой через края, а не центр
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            
            button.topAnchor.constraint(equalTo: buttonContainerView.topAnchor),
            button.bottomAnchor.constraint(equalTo: buttonContainerView.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: buttonContainerView.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: buttonContainerView.trailingAnchor)
        ])
    }
}

