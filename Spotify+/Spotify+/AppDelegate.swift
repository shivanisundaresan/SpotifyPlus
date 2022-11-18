//
//  AppDelegate.swift
//  Spotify+
//
//  Created by Shivani on 11/16/22.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let SpotifyClientID = "[your spotify client id here]"
    let SpotifyRedirectURL = URL(string: "spotify-ios-quick-start://spotify-login-callback")!

    lazy var configuration = SPTConfiguration(
      clientID: SpotifyClientID,
      redirectURL: SpotifyRedirectURL
    )
    
    var window: UIWindow?
    var application: UIApplication!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //SpotifyManager.shared.appRemote is of type SPTAppRemote
        if SpotifyManager.shared.appRemote.isConnected {
            SpotifyManager.shared.appRemote.disconnect()
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        //SpotifyManager.shared.appRemote is of type SPTAppRemote
        if let _ = SpotifyManager.shared.appRemote.connectionParameters.accessToken {
            SpotifyManager.shared.appRemote.connect()
        }
    }
}
