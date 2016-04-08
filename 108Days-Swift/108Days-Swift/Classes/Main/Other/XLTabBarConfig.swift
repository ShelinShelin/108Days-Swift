//
//  XLTabBarConfig.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/8.
//  Copyright © 2016年 Shelin. All rights reserved.
//

import UIKit

class XLTabBarConfig: NSObject {

    //MARK: - 懒加载
    lazy var tabBarController : XLTabBarViewController = {
        
        var homeViewController = XLHomeViewController()
        homeViewController.title = "首页"
        var nav1 = XLNavigationViewController()
        nav1.addChildViewController(homeViewController)
        
        var discoveryViewController = XLDiscoveryViewController()
        discoveryViewController.title = "发现"
        var nav2 = XLNavigationViewController()
        nav2.addChildViewController(discoveryViewController)
        
        var activityViewController = XLActivityViewController()
        activityViewController.title = "活动"
        var nav3 = XLNavigationViewController()
        nav3.addChildViewController(activityViewController)
        
        var mineViewController = XLMineViewController()
        mineViewController.title = "我的"
        var nav4 = XLNavigationViewController()
        nav4.addChildViewController(mineViewController)
        
        var tabBarViewController = XLTabBarViewController()
        
        var dict1  = [xlTabBarItemTitle : "首页", xlTabBarItemNormalImage : "home", xlTabBarItemSelectedImage : "home_h"]
        var dict2  = [xlTabBarItemTitle : "发现", xlTabBarItemNormalImage : "choiceness", xlTabBarItemSelectedImage : "choiceness_h"]
        var dict3  = [xlTabBarItemTitle : "活动", xlTabBarItemNormalImage : "active", xlTabBarItemSelectedImage : "active_h"]
        var dict4  = [xlTabBarItemTitle : "我的", xlTabBarItemNormalImage : "mine", xlTabBarItemSelectedImage : "mine_h"]
        
        var tabBarItemsAttributes = [dict1, dict2, dict3, dict4]
        
        tabBarViewController.tabBarItemsAttributes = tabBarItemsAttributes
        tabBarViewController.allChildViewControllers = [nav1, nav2, nav3, nav4]
        
        return tabBarViewController
    }()
}
