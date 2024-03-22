//
//  AppCoordinator.swift
//  EMTestTaskApp
//
//  Created by admin on 20.03.2024.
//
import SwiftUI
import Foundation

class AppCoordinator: Coordinator {
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let onboardingCoordinator = OnboardingCoordinator()
        onboardingCoordinator.start()
        self.childCoordinators = [onboardingCoordinator]
        window.rootViewController = onboardingCoordinator.rootViewController
    }
    
    
}
