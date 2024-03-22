//
//  SceneDelegate.swift
//  EMTestTaskApp
//
//  Created by admin on 19.03.2024.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.makeKeyAndVisible()
            let applicationCoordinator = AppCoordinator(window: window)
            applicationCoordinator.start()
            self.appCoordinator = applicationCoordinator
        }
    }
}

