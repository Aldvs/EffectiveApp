//
//  FirstTabCoordinator.swift
//  EMTestTaskApp
//
//  Created by admin on 22.03.2024.
//

import UIKit

class FirstTabCoordinator: Coordinator {
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: true)
    }
}
