//
//  Colors.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/02/22.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let blueLetsPay = UIColor.rgb(red: 78, green: 133, blue: 255)
}
