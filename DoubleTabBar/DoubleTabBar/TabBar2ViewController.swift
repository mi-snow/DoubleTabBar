//
//  TabBar2ViewController.swift
//  DoubleTabBar
//
//  Created by mi-snow on 2016/11/24.
//  Copyright © 2016年 mi-snow. All rights reserved.
//

import Foundation
import UIKit

class TabBar2ViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabBar: CustomTabBar!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabBar.delegate = self;
        
        //タブバーアイテムのデザイン変更
        UITabBarItem.appearanceWhenContainedInInstancesOfClasses([CustomTabBar.self]).setTitleTextAttributes([
            NSFontAttributeName: UIFont.systemFontOfSize(20), //文字の大きさを変更
            NSForegroundColorAttributeName: UIColor(red: 0.55, green: 0.55, blue: 0.55, alpha: 1.0) //文字の色を変更
            ], forState: UIControlState.Normal); //通常時
        UITabBarItem.appearanceWhenContainedInInstancesOfClasses([CustomTabBar.self]).setTitleTextAttributes([
            NSForegroundColorAttributeName: UIColor(red: 0.55, green: 0.55, blue: 0.80, alpha: 1.0) //文字の色を変更
            ], forState: UIControlState.Selected); //選択時
        UITabBarItem.appearanceWhenContainedInInstancesOfClasses([CustomTabBar.self]).titlePositionAdjustment = UIOffsetMake(0, -9); //文字の場所を移動
        
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