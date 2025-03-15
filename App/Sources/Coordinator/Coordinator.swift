//
//  Coordinator.swift
//  App
//
//  Created by Rami Ounifi on 16.03.25.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainViewController = MainViewController()
        navigationController.pushViewController(mainViewController, animated: false)
    }
}

class FeatureCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let featureViewController = UIViewController()
        navigationController.pushViewController(featureViewController, animated: true)
    }
}
