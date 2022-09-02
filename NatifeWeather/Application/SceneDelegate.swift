//
//  SceneDelegate.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    private var navigator: AppNavigator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            self.window = window
            window.makeKeyAndVisible()
            navigator = AppNavigator(window: window)
            navigator?.navigate(to: .main)
        }
    }
}
