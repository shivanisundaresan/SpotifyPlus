//
//  SceneDelegate.swift
//  Spotify+
//
//  Created by Shivani on 10/26/22.
//

import UIKit
var window: UIWindow?
class SceneDelegate: UIResponder, UIWindowSceneDelegate{
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions:UIScene.ConnectionOptions){
        guard let windowScene = (scene as? UIWindowScene) else {return}
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = HomeViewController()
        window.makeKeyAndVisible()
        self.window = window
    }
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }
    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    func sceneWillResignActive(_ scene: UIScene) {
        
    }
}
