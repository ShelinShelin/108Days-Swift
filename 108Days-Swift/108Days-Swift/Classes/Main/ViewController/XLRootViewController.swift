//
//  XLRootViewCOntroller.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/9.
//  Copyright © 2016年 Shelin. All rights reserved.
//

import UIKit

class XLRootViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.createBarButtonItem(self, action: Selector("backAction"), imageName: "nav_back")
    }
    
    //MARK: - btn action
    func backAction() {
        navigationController?.popViewControllerAnimated(true)
    }
}
