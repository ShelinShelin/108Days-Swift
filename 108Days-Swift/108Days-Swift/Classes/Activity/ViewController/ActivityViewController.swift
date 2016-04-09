//
//  XLActivityViewController.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/8.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    //MARK: - life cyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customNavBar()
        
        
    }
    
    //MARK: - UI
    
    private func customNavBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem.createBarButtonItem(self, action: Selector("sortAction"), imageName: "active_nav_right_btn")
    }
    
    //MARK: - btn action
    
    func sortAction() {
        print(__FUNCTION__)
    }

}
