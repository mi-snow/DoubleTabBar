//
//  TabBar1ViewController.swift
//  DoubleTabBar
//
//  Created by mi-snow on 2016/11/24.
//  Copyright © 2016年 mi-snow. All rights reserved.
//

import Foundation
import UIKit

class TabBar1ViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabBar.delegate = self;
        
        view1.hidden = false;
        view2.hidden = true;
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        if(item.tag == 1){
            view1.hidden = false;
            view2.hidden = true;
        }else if(item.tag == 2){
            view1.hidden = true;
            view2.hidden = false;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

