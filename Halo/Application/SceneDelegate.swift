//
//  SceneDelegate.swift
//  Halo
//
//  Created by Levy Cristian on 02/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        /// 1. Capture the scene
        guard let windowScene = (scene as? UIWindowScene) else { return }

        /// 2. Create a new UIWindow using the windowScene constructor which takes in a window scene.
        let window = UIWindow(windowScene: windowScene)

        /// 3. Create a view hierarchy programmatically
        let rootController = RootTabBarController()

        /// 4. Set the root view controller of the window with your view controller
        window.rootViewController = rootController

        /// 5. Set the window and call makeKeyAndVisible()
        self.window = window
        window.makeKeyAndVisible()
    }
}
