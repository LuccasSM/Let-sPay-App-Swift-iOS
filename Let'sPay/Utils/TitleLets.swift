//
//  TitleLets.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/04/22.
//

import UIKit

class TitleLets: UIView {
    func titleLets() -> UILabel {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Let'sPay"
        title.font = UIFont.init(name: "GlacialIndifference-Bold", size: 36)
        return title
    }
}
