//
//  XLHomeViewController.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/8.
//  Copyright © 2016年 GreatGate. All rights reserved.
//

import UIKit

class HomeViewController: XLRootViewController {
    
    //MARK: - life cyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customNavBar()
        
        
    }
    
    //MARK: - UI
    
    private func customNavBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem.createBarButtonItem(self, action: Selector("selectCityAction"), title: "北京", imageName: "home_city_location_img")
        navigationItem.rightBarButtonItem = UIBarButtonItem.createBarButtonItem(self, action: Selector("searchAction"), imageName: "home_search_img")
    }
    
    //MARK: - btn action
    
    func searchAction() {
        print(__FUNCTION__)
        let searchVC = SearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
    func selectCityAction() {
        print(__FUNCTION__)
        let cityListVC = CityListViewController()
        navigationController?.pushViewController(cityListVC, animated: true)
    }
}
