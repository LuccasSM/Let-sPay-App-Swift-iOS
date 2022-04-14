//
//  AccessAccount.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 14/04/22.
//

import UIKit

class AccessAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
     
        // MARK: - Chamando Background
        
        let background = Background(frame: view.frame)
        self.view.addSubview(background)
        
        background.isHidden = true
    }
}
