//
//  SecondTabCoordinator.swift
//  EMTestTaskApp
//
//  Created by admin on 22.03.2024.
//

import UIKit

class SecondTabCoordinator: Coordinator {
    var rootViewController = UINavigationController()
    
    lazy var  secondViewController: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: true)
    }
}
