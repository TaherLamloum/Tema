//
//  AppDelegate.swift
//  Tema
//
//  Created by taher elnehr on 10/08/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = UINavigationController(rootViewController: OrdersVC())
        rootVC.navigationBar.isHidden = true
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }

}

