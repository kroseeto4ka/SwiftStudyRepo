//
//  UIStackView+MultipleSubviews.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 01.10.2024.
//

import Foundation
import UIKit

extension UIStackView {
    func addMultipleArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
