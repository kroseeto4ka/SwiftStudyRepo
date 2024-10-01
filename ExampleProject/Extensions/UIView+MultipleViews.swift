//
//  UIView+MultipleViews.swift
//  ExampleProject
//
//  Created by Никита Сорочинский on 01.10.2024.
//

import Foundation
import UIKit

extension UIView {
    func addMultipleSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
}
