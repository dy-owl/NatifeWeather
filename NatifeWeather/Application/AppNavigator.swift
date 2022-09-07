//
//  AppNavigator.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

protocol AppNavigatorDelegate: AnyObject {
    func didRequestContextChange(for destination: AppNavigator.Destination)
}

class AppNavigator: ScreenNavigatorProtocol {
    
    enum Destination {
        case main
    }
    
    private let appNavigationController = BaseNavigationController()
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = appNavigationController
    }
    
    func navigate(to destination: Destination) {
        switch destination {
        case .main:
            toMain()
        }
    }
    
    private func toMain() {
        appNavigationController.view.frame = UIScreen.main.bounds
        let navigator = HomeNavigator(navigationController: appNavigationController)
        navigator.delegate = self
        navigator.navigate(to: .home)
    }
}

extension AppNavigator: AppNavigatorDelegate {
    func didRequestContextChange(for destination: Destination) {
        navigate(to: destination)
    }
}

