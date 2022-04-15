//
//  Header.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/04/22.
//

import UIKit

class Header: UIView {
    func header() -> UIView {
        let header = UIView(frame: .zero)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.layer.cornerRadius = 5
        header.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return header
    }
}
