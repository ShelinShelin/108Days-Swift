//
//  XLTabBarViewController.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/8.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

import UIKit

let xlTabBarItemTitle = "tabBarItemTitle"
let xlTabBarItemNormalImage = "tabBarItemNormalImage"
let xlTabBarItemSelectedImage = "tabBarItemSelectedImage"
let xlTabBarItemNormalTitleColor = "tabBarItemNormalTitleColor"
let xlTabBarItemSelectedTitleColor = "tabBarItemSelectedTitleColor"

class XLTabBarViewController: UITabBarController {
    
    var tabBarItemsAttributes : [[String : String]]!
    
    var allChildViewControllers : [UIViewController]! {
        //重写属性监听器
        didSet {
            for viewController in allChildViewControllers {
                viewController.willMoveToParentViewController(nil)
                viewController.view.removeFromSuperview()
                viewController.removeFromParentViewController()
            }
            var index = 0
            for viewController in allChildViewControllers {
                let title = tabBarItemsAttributes[index][xlTabBarItemTitle]
                let normalImageName = tabBarItemsAttributes[index][xlTabBarItemNormalImage]
                let selectedImageName = tabBarItemsAttributes[index][xlTabBarItemSelectedImage]
                addChildViewController(viewController, title: title!, normalImageName: normalImageName!, selectedImageName: selectedImageName!)
                index++
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.whiteColor()
        customizeTabBarAppearance()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: - add child viewcontroller
    
    private func addChildViewController(viewController: UIViewController, title: String, normalImageName: String, selectedImageName: String) {
        
        viewController.tabBarItem.title = title
        
        let normalImage = UIImage(named: normalImageName)
        //图片渲染模式设置为始终展现原始图片效果
        normalImage!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        viewController.tabBarItem.image = normalImage
        
        let selectedImage = UIImage(named: selectedImageName)
        selectedImage!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        viewController.tabBarItem.selectedImage = selectedImage
        
        addChildViewController(viewController)
    }
    
    //MARK: - TabBar Appearance ForegroundColorAttributeName
    
    private func customizeTabBarAppearance() {
        
        //解析：http://stackoverflow.com/questions/26704896/swift-uitabbaritem-colors
        tabBar.tintColor = UIColor.init(red: 0.00, green: 0.80, blue: 0.75, alpha: 1.00)
        
        let normalAttrs = [NSForegroundColorAttributeName : UIColor.grayColor()]
        
        let selectedAttrs = [NSForegroundColorAttributeName : UIColor.init(red: 0.00, green: 0.80, blue: 0.75, alpha: 1.00)]
        
        let tabBarItem = UITabBarItem.appearance()
        tabBarItem.setTitleTextAttributes(normalAttrs, forState: UIControlState.Normal)
        tabBarItem.setTitleTextAttributes(selectedAttrs, forState: UIControlState.Selected)
    }
}
