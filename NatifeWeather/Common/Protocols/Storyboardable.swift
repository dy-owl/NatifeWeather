//
//  Storyboardable.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

protocol Storyboardable {

    static var defaultStoryboardName: String { get }
}

extension Storyboardable where Self: UIViewController {

    static var defaultStoryboardName: String {
        return String(describing: self)
    }

    static func storyboardViewController() -> Self {
        let storyboard = UIStoryboard(name: defaultStoryboardName, bundle: Bundle(for: Self.self))

        guard let viewController = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Could not instantiate initial storyboard with name: \(defaultStoryboardName)")
        }

        return viewController
    }
}

