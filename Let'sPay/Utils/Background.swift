//
//  Background.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 14/04/22.
//

import UIKit

class Background: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blueLetsPay
        NotificationCenter.default.addObserver(self, selector: #selector(exitBG), name: UIApplication.didBecomeActiveNotification, object: .none)
        NotificationCenter.default.addObserver(self, selector: #selector(enterBG), name: UIApplication.willResignActiveNotification, object: .none)
        
        //MARK: - View's entrando em background
        
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(title)
        title.text = "Let'sPay"
        title.textColor = .white
        title.font = UIFont.init(name: "GlacialIndifference-Bold", size: 36)
        title.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }
    
    // MARK: - Chamando as funções de entrar e sair background
    
    @objc func enterBG() {
        self.isHidden = false
    }
        
    @objc func exitBG() {
        self.isHidden = true
    }
}
