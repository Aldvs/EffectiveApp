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
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = UIHostingController(rootView: ContentView())
    }
    
    
}
