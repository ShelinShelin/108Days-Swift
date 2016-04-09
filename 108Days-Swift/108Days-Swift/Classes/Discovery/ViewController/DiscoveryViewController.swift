//
//  XLDiscoveryViewController.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/8.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

import UIKit

class DiscoveryViewController: XLRootViewController {
    
    //MARK: - life cyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customNavBar()
        
        
    }
    
    //MARK: - UI
    
    private func customNavBar() {
        navigationItem.leftBarButtonItem = nil
    }
    
    //MARK: - btn action
}
