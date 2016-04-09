//
//  UIBarButtonItem+Extension.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/9.
//  Copyright © 2016年 Shelin. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    class func createBarButtonItem(target: AnyObject?, action: Selector!, imageName: String!) -> UIBarButtonItem {
        let button = UIButton(type: UIButtonType.Custom)
        button.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        button.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        button.sizeToFit()
        return UIBarButtonItem(customView: button)
    }
    /*
    func barButtonItem(WithTarget: AnyObject?, action: String!, title: String!, imageName: String!) -> UIBarButtonItem {
        
        
    }*/
}