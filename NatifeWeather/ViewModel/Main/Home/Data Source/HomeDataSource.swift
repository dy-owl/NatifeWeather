//
//  HomeDataSource.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 03.09.2022.
//

import UIKit
import RxSwift

class HomeDataSource: NSObject {
    
    private var weatherCollectionView: DynamicHeightCollectionView?
    private var hourlyInfos = [HourlyWeatherInfo]()
    private var dailyInfos = [DailyWeatherInfo]()
    
    func configure(weatherCollectionView: DynamicHeightCollectionView) {
        self.weatherCollectionView = weatherCollectionView
        self.weatherCollectionView?.delegate = self
        self.weatherCollectionView?.dataSource = self
        configureCollectionViews()
    }
    
    func updateHourlyInfos(_ hourlyInfos: [HourlyWeatherInfo]) {
        self.hourlyInfos = hourlyInfos
        update()
    }
    
    func updateDailyInfos(_ dailyInfos: [DailyWeatherInfo]) {
        self.dailyInfos = dailyInfos
        update()
    }
    
    private func update() {
        weatherCollectionView?.reloadData()
        weatherCollectionView?.layoutIfNeeded()
    }
    
    private func configureCollectionViews() {
        weatherCollectionView?.register(HourlyWeatherCollectionViewCell.self)
//        weatherCollectionView?.register(DailyWeatherCollectionViewCell.self)
        weatherCollectionView?.isExclusiveTouch = true
    }
}

extension HomeDataSource: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        14
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let weatherCollectionView = weatherCollectionView else { return UICollectionViewCell() }
        let cell: HourlyWeatherCollectionViewCell = weatherCollectionView.dequeueReusableCell(indexPath: indexPath)
        return cell
    }
}
