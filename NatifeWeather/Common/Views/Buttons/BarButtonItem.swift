//
//  LocationBarButton.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class BarButtonItem: UIBarButtonItem {
    
    convenience init(image: UIImage?) {
        self.init(image: image, style: .plain, target: nil, action: nil)
    }
}
