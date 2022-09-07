//
//  MapController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class MapController: NSObject {
    
    func configureSearchTextField(with width: CGFloat) -> UITextField {
        let searchTextField = UITextField(frame: CGRect(x: 0, y: 0, width: width, height: 30))
        searchTextField.borderStyle = .roundedRect
        searchTextField.backgroundColor = Styling.Colors.white.color
        searchTextField.textColor = Styling.Colors.black.color
        searchTextField.tintColor = Styling.Colors.black.color
        return searchTextField
    }
}
