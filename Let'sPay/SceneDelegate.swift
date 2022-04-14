//
//  SceneDelegate.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/02/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let _ = (scene as? UIWindowScene) else { return }
    guard let windowScene = (scene as? UIWindowScene) else { return }
                
    //MARK: - View Principal
                
    let safeWindow = UIWindow(windowScene: windowScene)
    safeWindow.frame = UIScreen.main.bounds
    safeWindow.rootViewController = Splash()
    safeWindow.makeKeyAndVisible()

        window = safeWindow
    }
}
