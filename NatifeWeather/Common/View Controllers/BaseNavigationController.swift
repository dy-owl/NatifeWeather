//
//  BaseNavigationController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
