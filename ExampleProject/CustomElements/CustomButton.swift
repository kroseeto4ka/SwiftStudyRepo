//
//  CustomButton.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 27.09.2024.
//

import UIKit

class CustomButton: UIButton {
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(buttonSelfColor: UIColor, buttonTextColor: UIColor, buttonText: String, isShadowRequired: Bool) {
        super.init(frame: .zero)
        setupButton(buttonSelfColor, buttonTextColor, buttonText, isShadowRequired)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
    
    
}

// MARK: - Setup view
extension CustomButton {
    private func setupButton(_ buttonSelfColor: UIColor,_ buttonTextColor: UIColor, _ text: String, _ isShadowRequired: Bool) {
        setTitle(text, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
        setTitleColor(buttonTextColor, for: state)
        backgroundColor = buttonSelfColor
        layer.cornerRadius = Constant.corner20
        
        if isShadowRequired {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowRadius = 15
            layer.shadowOpacity = 0.7
            
        }
    }
}

// MARK: - Constants
extension CustomButton {
    enum Constant {
        static let corner20 = CGFloat(20)
    }
}
