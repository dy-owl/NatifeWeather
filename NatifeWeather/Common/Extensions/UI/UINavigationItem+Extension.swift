//
//  UINavigationItem+Extension.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

extension UINavigationItem {

    func addBackButton() {
        backBarButtonItem = UIBarButtonItem(title: "",
                                            style: .plain,
                                            target: nil,
                                            action: nil)
    }
}

