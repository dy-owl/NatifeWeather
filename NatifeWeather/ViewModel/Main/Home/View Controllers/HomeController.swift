//
//  HomeController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit

class HomeController: NSObject {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherCollectionView: DynamicHeightCollectionView!
    
    let homeDataSource = HomeDataSource()
    
    func configure() {
        homeDataSource.configure(weatherCollectionView: weatherCollectionView)
    }
}
