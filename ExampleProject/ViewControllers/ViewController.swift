//
//  ViewController.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 10.09.2024.
//

import UIKit

class ViewController: UIViewController {
    private let textLabel = UILabel()
    private let stackView = UIStackView()
    private let showUserButton = CustomButton(
        buttonSelfColor: .systemRed,
        buttonTextColor: .systemOrange,
        buttonText: "Show New User",
        isShadowRequired: false)
    private let hideUserButton = CustomButton(
        buttonSelfColor: .systemGreen,
        buttonTextColor: .systemOrange,
        buttonText: "Hide User",
        isShadowRequired: true)
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helper.updateNamesFromRepo() //апдейт имён репозитория
        
        printPeople()
        
        setupLabel()
        setupStackView()
        view.addMultipleSubviews([stackView]) //метод с множественым добавлением вьюх
        setupView()
        addAction()
        
        setupLayout()
    }
    
    private func printPeople() {
        for person in helper.getPeople() {
            print(person)
        }
    }
    
    @objc
    private func showUserButtonTapped() {
        let randomPerson = helper.getPeople().randomElement()
        let personName = randomPerson?.getName().fullName
        textLabel.text = "\(personName ?? "No name")"
    }
}

// MARK: - Setup view
extension ViewController {
    //настройка экшнов
    func addAction() {
        //экшн для смены юзера
        showUserButton.addTarget(
            self,
            action: #selector(showUserButtonTapped),
            for: .touchUpInside)
        
        //экшн для стерания юзера
        let action = UIAction { _ in
            self.textLabel.text = ""
        }
        hideUserButton.addAction(action, for: .touchUpInside)
    }
    
    private func setupLabel() {
        let randomPerson = helper.getPeople().randomElement()
        let personName = randomPerson?.getName().fullName
        textLabel.text = "\(personName ?? "No name")"
        textLabel.font = .systemFont(ofSize: Constant.font30, weight: .heavy)
        textLabel.textColor = .systemOrange
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        stackView.alignment = .fill
        
        stackView.addMultipleArrangedSubviews([
            textLabel,
            showUserButton,
            hideUserButton
        ])
    }
    
    private func setupView() {
        view.addGradient(
            colors:
                [UIColor.systemPink.cgColor,
                 UIColor.systemCyan.cgColor,
                 UIColor.systemPink.cgColor],
            startPoint: CGPoint(x: 0, y: 1),
            endPoint: CGPoint(x: 1, y: 0))
    }
}

// MARK: - Setup layout
extension ViewController {
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        showUserButton.translatesAutoresizingMaskIntoConstraints = false
        hideUserButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //задал констрейнты стека привязкой через края, а не центр
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            showUserButton.heightAnchor.constraint(equalToConstant: 50),
            hideUserButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

// MARK: - Nested types
extension ViewController {
    enum Constant {
        static let font30 = CGFloat(30)
    }
}
