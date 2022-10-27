//
//  AppDelegate.swift
//  Spotify+
//
//  Created by Shivani on 10/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate{
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey:Any]?)->Bool{
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = HomeViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true;
    }
    
    //UI Scene Session Lifecycle
    func application(_ application:UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options:UIScene.ConnectionOptions)->UISceneConfiguration{
        //Called when new scene is being created
        //Select a configuration to create the new scene with
        return UISceneConfiguration(name:"Default configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>){
        
    }
}
