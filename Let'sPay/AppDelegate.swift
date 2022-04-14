//
//  AppDelegate.swift
//  Let'sPay
//
//  Created by Luccas Santana Marinho on 15/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var orientationLock = UIInterfaceOrientationMask.all
        
    // MARK: - Tratativa para App não rotacionar

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
    }
    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
//                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        UIFont.familyNames.forEach({ name in
//            for font_name in UIFont.fontNames(forFamilyName: name) {
//                print("\n\(font_name)")
//            }
//        })
//
//        return true
//    }
        
    struct AppUtility {
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }

        static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {
            self.lockOrientation(orientation)
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
    }
}
