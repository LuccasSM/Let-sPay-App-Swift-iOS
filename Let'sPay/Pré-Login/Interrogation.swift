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
        view.backgroundColor = .systemOrange
        
    //MARK: - Método para Observar quando entrar e sair de Background o App
            
        NotificationCenter.default.addObserver(self, selector: #selector(enterInBackground), name: UIApplication.willResignActiveNotification, object: .none)
    }
    
    //MARK: - Func para chamar Background via Present
    
    @objc func enterInBackground() {
        self.view.isHidden = true
        self.dismiss(animated: true, completion: nil)
    }
}
