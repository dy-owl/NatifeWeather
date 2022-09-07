//
//  MapNavigator.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

class MapNavigator: ScreenNavigator, ScreenNavigatorProtocol {
            
    enum Destination {
        case map
    }
    
    weak var delegate: AppNavigatorDelegate?
    
    func navigate(to destination: Destination) {
        switch destination {
        case .map:
            toMap()
        }
    }
    
    private func toMap() {
        let viewController = MapViewController.storyboardViewController()
        viewController.navigator = self
        navigate(to: viewController)
    }
}

