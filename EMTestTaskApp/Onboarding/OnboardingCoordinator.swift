//
//  OnboardingCoordinator.swift
//  EMTestTaskApp
//
//  Created by admin on 21.03.2024.
//

import Foundation
import SwiftUI

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        rootViewController = UIHostingController(rootView: view)
    }
}
