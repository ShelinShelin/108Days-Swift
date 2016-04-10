//
//  HomeLeftBarBtn.swift
//  108Days-Swift
//
//  Created by Shelin on 16/4/9.
//  Copyright © 2016年 Shelin. All rights reserved.
//

import UIKit

class HomeLeftBarBtn: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        titleLabel?.font = UIFont.systemFontOfSize(14.0)
        setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        sizeToFit()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.frame.origin.x = 0
        imageView?.frame.origin.x = titleLabel!.frame.size.width + 8
        
    }
}
