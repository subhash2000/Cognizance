//
//  MainTabBarController.swift
//  Cognizance
//
//  Created by Subhash  on 1/28/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.tabBar.isTranslucent = false
        tabBar.barTintColor = .purple
        tabBar.isTranslucent = false
         //  self.tabBar.backgroundColor = UIColor(hexString: "323B61")
setup()
    }
    func setup(){
        let home = UINavigationController(rootViewController: Home())
        home.tabBarItem.image = UIImage(named: "ic_mail_outline_white_2x")
        
        
        let mapcontroller = UINavigationController(rootViewController: MapViewController())
        mapcontroller.tabBarItem.image = UIImage(named: "ic_person_outline_white_2x")
        
        let scancontroller = UINavigationController(rootViewController: ScannerController())
        scancontroller.tabBarItem.image = UIImage(named: "ic_person_outline_white_2x")
        
        viewControllers = [home,mapcontroller,scancontroller]
        
    }


}
