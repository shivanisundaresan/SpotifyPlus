//
//  TabBarViewController.swift
//  Spotify+
//
//  Created by Shivani on 10/26/22.
//

import UIKit

class TabBarViewController: UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        
        vc1.title = "By Artist"
        vc2.title = "By Song"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2], animated: false)
    }
}
