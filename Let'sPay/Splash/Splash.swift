//
//  Splash.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/02/22.
//

import UIKit

class Splash: UIViewController {
    
    // MARK: --- Inserindo funções e layout
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    // MARK: --- Ajustes de constraint (Removendo o is.Active = true)
        
        NSLayoutConstraint.activate([
            letspay.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            letspay.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            
            pagamento.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pagamento.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 17),
        ])
    }
    
    // MARK: --- Criando as Views da Splash
    
    private lazy var letspay: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Let'sPay"
        text.textColor = .white
        text.font = UIFont.init(name: "GlacialIndifference-Bold", size: 56)
        return text
    }()
    
    private lazy var pagamento: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "p a g a m e n t o".uppercased()
        text.textColor = .white
        text.font = UIFont.init(name: "GlacialIndifference-Bold", size: 8)
        return text
    }()
    
    // MARK: --- Setando as Views da Splash

    func setupViews() {
        view.backgroundColor = .blueLetsPay
        view.addSubview(letspay)
        view.addSubview(pagamento)
    }
    
    // MARK: --- Theme Light: Hrs Wifi 4G Bateria
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: --- Remover Orientação de tela
    
    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    // MARK: --- Chamando a Pré-Login
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            self.animated()
        })
    }
            
    private func animated() {
        UIView.animate(withDuration: 0, animations: {
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
                    let viewController = Pre_Login()
                    viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                })
            }
        })
    }
}
