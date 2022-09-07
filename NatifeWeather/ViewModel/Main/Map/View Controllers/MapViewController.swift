//
//  MapViewController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

final class MapViewController: BaseViewController, Storyboardable {
    
    @IBOutlet var controller: MapController!
    
    var navigator: MapNavigator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        showMagnifierBarItem()
        
        guard let width = navigationController?.navigationBar.frame.size.width else { return }
        let searchTextField = controller.configureSearchTextField(with: width)
        navigationItem.titleView = searchTextField
    }
}
