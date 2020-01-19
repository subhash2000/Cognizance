//
//  WorkshopViewController.swift
//  Cognizance
//
//  Created by Subhash  on 1/19/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class WorkshopViewController: UIViewController {
   let scrollview  =  UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "WORKSHOPS"
       test()
        // Do any additional setup after loading the view.
    }
    

    func test(){
        view.addSubview(scrollview)
        scrollview.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
               scrollview.contentSize = CGSize(width: view.frame.width, height: 1500)
        
        let view1 = UIView()
        view1.layer.borderColor = UIColor.blue.cgColor
        view1.layer.borderWidth = 4
        view1.frame  = CGRect(x: 10, y: 25, width: view.frame.width-25, height: 130)
        scrollview.addSubview(view1)
               
        let view2 = UIView()
        view2.layer.borderColor = UIColor.blue.cgColor
        view2.layer.borderWidth = 4
        view2.frame  = CGRect(x: 10, y: 175, width: view.frame.width-25, height: 130)
        scrollview.addSubview(view2)
               
        let view3 = UIView()
        view3.layer.borderColor = UIColor.blue.cgColor
        view3.layer.borderWidth = 4
        view3.frame  = CGRect(x: 10, y: 325, width: view.frame.width-25, height: 130)
        scrollview.addSubview(view3)
               
        let view4 = UIView()
        view4.layer.borderColor = UIColor.blue.cgColor
        view4.layer.borderWidth = 4
        view4.frame  = CGRect(x: 10, y: 475, width: view.frame.width-25, height: 130)
        scrollview.addSubview(view4)
               
               let view5 = UIView()
                      view5.layer.borderColor = UIColor.blue.cgColor
                      view5.layer.borderWidth = 4
                      view5.frame  = CGRect(x: 10, y: 625, width: view.frame.width-25, height: 130)
                      scrollview.addSubview(view5)
               
               let view6 = UIView()
                      view6.layer.borderColor = UIColor.blue.cgColor
                      view6.layer.borderWidth = 4
                      view6.frame  = CGRect(x: 10, y: 775, width: view.frame.width-25, height: 130)
                      scrollview.addSubview(view6)
               
               let view7 = UIView()
                      view7.layer.borderColor = UIColor.blue.cgColor
                      view7.layer.borderWidth = 4
                      view7.frame  = CGRect(x: 10, y: 925, width: view.frame.width-25, height: 130)
                      scrollview.addSubview(view7)
               
               let view8 = UIView()
                      view8.layer.borderColor = UIColor.blue.cgColor
                      view8.layer.borderWidth = 4
                      view8.frame  = CGRect(x: 10, y: 1075, width: view.frame.width-25, height: 130)
                      scrollview.addSubview(view8)
               
        
      
       
    }

}
