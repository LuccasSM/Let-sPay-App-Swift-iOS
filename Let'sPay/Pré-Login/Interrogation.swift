//
//  Interrogation.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 14/04/22.
//

import UIKit

class Interrogation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        
    //MARK: - Método para Observar quando entrar e sair de Background o App
            
        NotificationCenter.default.addObserver(self, selector: #selector(enterInBackground), name: UIApplication.willResignActiveNotification, object: .none)
        
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.12),
            header.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            header.topAnchor.constraint(equalTo: self.view.topAnchor),
            
//            titleInterrogation.centerXAnchor.constraint(equalTo: self.header.centerXAnchor),
            titleInterrogation.centerYAnchor.constraint(equalTo: self.header.centerYAnchor),
            titleInterrogation.leadingAnchor.constraint(equalTo: self.header.layoutMarginsGuide.leadingAnchor, constant: 5),
            
            fechar.centerYAnchor.constraint(equalTo: self.header.safeAreaLayoutGuide.centerYAnchor),
            fechar.trailingAnchor.constraint(equalTo: self.header.layoutMarginsGuide.trailingAnchor, constant: -5),
        ])
    }
    
    // MARK: - Criando as Views da Interrogation
    
    private lazy var header: UIView = {
        let header = Header().header()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.backgroundColor = .white
        header.layer.zPosition = 2
        return header
    }()
    
    private lazy var titleInterrogation: UILabel = {
        let title = TitleLets().titleLets()
        title.textColor = .blueLetsPay
        return title
    }()
    
    private lazy var fechar: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Fechar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.blueLetsPay, for: .normal)
        button.addTarget(self, action: #selector(returnButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Setando as Views da Interrogation
    
    func setupViews() {
        self.view.addSubview(header)
        self.header.addSubview(titleInterrogation)
        self.header.addSubview(fechar)
    }
    
    //MARK: - Func para chamar Background via Present
    
    @objc func enterInBackground() {
        self.view.isHidden = true
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func returnButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
