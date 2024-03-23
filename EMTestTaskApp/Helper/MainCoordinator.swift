//
//  MainCoordinator.swift
//  EMTestTaskApp
//
//  Created by admin on 22.03.2024.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    
    var childCoordinators = [Coordinator]()
    
    init() {
        rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinators.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController,
              title: "Pervii",
              imageName: "paperplane",
              selectedImageName: "paperplane.fill"
        )
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinators.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
        setup(vc: secondViewController,
              title: "Vtoroi",
              imageName: "bell",
              selectedImageName: "bell.fill"
        )
        
        self.rootViewController.viewControllers = [firstViewController, secondCoordinator.rootViewController]
    }
    
    private func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
    
}
