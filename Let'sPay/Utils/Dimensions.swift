//
//  Dimensions.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 17/02/22.
//

import UIKit

extension UIView {
    func setDimensions(width: CGFloat, height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
}
