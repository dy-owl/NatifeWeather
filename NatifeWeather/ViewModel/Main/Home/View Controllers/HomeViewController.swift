//
//  HomeViewController.swift
//  NatifeWeather
//
//  Created by Dmytro Yantsybaiev on 02.09.2022.
//

import UIKit
import RxSwift
import RxCocoa

final class HomeViewController: BaseViewController, Storyboardable {
    
    @IBOutlet var controller: HomeController!
    
    var navigator: HomeNavigator!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        bindActions()
    }
    
    private func configure() {
        configureNavigationBar()
        controller.configure()
    }
    
    private func bindActions() {
        rightBarButton.rx.tap.asDriver().drive(onNext: { [unowned self] in
            self.navigator.navigate(to: .map)
        }).disposed(by: disposeBag)
    }
    
    private func configureNavigationBar() {
        showLocationBarItem()
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: controller.stackView)
    }
}
