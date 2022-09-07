//
//  HomeNavigator.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

class HomeNavigator: ScreenNavigator, ScreenNavigatorProtocol {
            
    enum Destination {
        case home
        case map
    }
    
    weak var delegate: AppNavigatorDelegate?
    
    func navigate(to destination: Destination) {
        switch destination {
        case .home:
            toHome()
        case .map:
            toMap()
        }
    }
    
    private func toHome() {
        let viewController = HomeViewController.storyboardViewController()
        viewController.navigator = self
        navigate(to: viewController, type: .asRoot)
    }
    
    private func toMap() {
        let navigator: MapNavigator = makeNavigator()
        navigator.navigate(to: .map)
    }
}
