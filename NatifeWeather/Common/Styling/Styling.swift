//
//  Styling.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

struct Styling {
    
    enum Colors: String {
        case black
        case bluePrimary
        case blueSecondary
        case white
        
        var color: UIColor {
            return UIColor(named: rawValue) ?? .black
        }
    }
    
    static func applyStyle() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: Colors.white.color]
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor: Colors.white.color]
        navigationBarAppearance.backgroundColor = Colors.bluePrimary.color
        
        let navigationBar = UINavigationBar.appearance()
        navigationBar.barTintColor = .clear
        navigationBar.isTranslucent = true
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.backgroundColor = Colors.bluePrimary.color
        navigationBar.tintColor = Colors.white.color
        navigationBar.standardAppearance = navigationBarAppearance
        navigationBar.scrollEdgeAppearance = navigationBarAppearance
    }
}
