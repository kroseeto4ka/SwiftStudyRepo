//
//  CustomButton.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 27.09.2024.
//

import UIKit

class CustomButton: UIView {
    private let button = UIButton()
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(buttonSelfColor: UIColor, buttonTextColor: UIColor, buttonText: String, isShadowRequired: Bool) {
        super.init(frame: .zero)
        setupButton(buttonSelfColor, buttonTextColor, buttonText)
        setupButtonView(isShadowRequired)
        setupLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
    
    private func setupButton(_ buttonSelfColor: UIColor,_ buttonTextColor: UIColor, _ text: String) {
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
        button.setTitleColor(buttonTextColor, for: button.state)
        button.backgroundColor = buttonSelfColor
        button.layer.cornerRadius = 20
    }
    
    private func setupButtonView(_ isShadowRequired: Bool) {
        if isShadowRequired {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 10, height: 10)
            layer.shadowOpacity = 1
            layer.shadowRadius = 10
        }
        
        addSubview(button)
    }
    
    private func setupLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
    }
}
