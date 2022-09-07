//
//  BaseViewController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class BaseViewController: UIViewController {
    
    private let rightBarItem = BarButtonItem()
    
    var rightBarButton: BarButtonItem {
        return rightBarItem
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.addBackButton()
    }
    
    func showLocationBarItem() {
        let image = UIImage(systemName: "location.fill.viewfinder")
        rightBarItem.image = image
        navigationItem.rightBarButtonItem = rightBarItem
    }
    
    func showMagnifierBarItem() {
        let image = UIImage(systemName: "magnifyingglass")
        rightBarItem.image = image
        navigationItem.rightBarButtonItem = rightBarItem
    }
}
