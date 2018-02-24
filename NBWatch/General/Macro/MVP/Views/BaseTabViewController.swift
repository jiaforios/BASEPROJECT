//
//  BaseTabViewController.swift
//  NBWatch
//
//  Created by admin on 2018/2/23.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class BaseTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.black], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.red], for: .selected)
        
        let homeVC = HomeViewController()
        let mineVC = MineViewController()
        let locationVC = LocationViewController()
        
        let mineNav = BaseNavgationViewController.init(rootViewController: mineVC)
        let homeNav = BaseNavgationViewController.init(rootViewController: homeVC)
        let locationNav = BaseNavgationViewController.init(rootViewController: locationVC)
        
        let homeItem = UITabBarItem.init(title: LocalString("home"), image: nil, tag: 0)
        let locationItem = UITabBarItem.init(title: LocalString("location"), image: nil, tag: 1)
        let mineItem = UITabBarItem.init(title: LocalString("mine"), image: nil, tag: 2)
        
        homeNav.tabBarItem = homeItem
        mineNav.tabBarItem = mineItem
        locationNav.tabBarItem = locationItem
        
//        let navi0 = UINavigationController(rootViewController:firstVC)
//        navi0.tabBarItem.title = "首页"
//        navi0.tabBarItem.image = UIImage (named:"sy")
//        navi0.tabBarItem.selectedImage = UIImage(named:"sy1")
        
    
        self.viewControllers = [homeNav,locationNav,mineNav]
        
        
        /*
        let titleLbl = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 30))
        titleLbl.text = "首页"
        titleLbl.font = UIFont.boldSystemFont(ofSize: 25)
        let leftBar = UIBarButtonItem.init(customView: titleLbl)
        homeVC.navigationItem.leftBarButtonItem = leftBar
       */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
