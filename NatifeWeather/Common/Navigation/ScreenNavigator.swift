//
//  ScreenNavigator.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

protocol ScreenNavigatorProtocol: AnyObject {

    associatedtype Destination

    func navigate(to destination: Destination)
}

class ScreenNavigator {

    enum NavigateType {
        case `default`
        case asRoot
    }

    internal let navigationController: BaseNavigationController

    required init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }

    convenience init() {
        self.init(navigationController: BaseNavigationController())
    }

    func makeNavigator<T: ScreenNavigator>() -> T {
        return makeNavigator(navController: navigationController)
    }

    func makeNavigator<T: ScreenNavigator>(navController: BaseNavigationController) -> T {
        return T(navigationController: navController)
    }

    func dismissCurrent(animated: Bool = true) {
        navigationController.dismiss(animated: animated)
    }

    func goBack() {
        navigationController.popViewController(animated: true)
    }

    func goToRoot(animated: Bool = true) {
        navigationController.popToRootViewController(animated: animated)
    }

    func popTo(viewController: UIViewController) {
        navigationController.popToViewController(viewController, animated: true)
    }
    
    func present(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        navigationController.present(viewController, animated: animated, completion: completion)
    }

    func navigate(to viewController: UIViewController, type: NavigateType = .default, animated: Bool = true) {
        switch type {
        case .default:
            navigationController.pushViewController(viewController, animated: animated)
        case .asRoot:
            navigationController.setViewControllers([viewController], animated: animated)
        }
    }
}
