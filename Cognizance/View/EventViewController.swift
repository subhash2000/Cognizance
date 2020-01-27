//
//  EventViewController.swift
//  Cognizance
//
//  Created by Subhash  on 1/19/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class EventViewController:UIViewController {
   let scrollview  =  UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
       self.navigationItem.title = "EVENTS"
       test()
        // Do any additional setup after loading the view.
    }
    

    func test(){
        view.addSubview(scrollview)
        scrollview.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
               scrollview.contentSize = CGSize(width: view.frame.width, height: 1500)
    
        //MARK:-
        
        let view1 = UIView()
        view1.layer.borderColor = UIColor.blue.cgColor
        view1.layer.borderWidth = 4
        view1.frame  = CGRect(x: 10, y: 50, width: view.frame.width-25, height: 130)
        scrollview.addSubview(view1)
        
        let image1 = UIImage(named: "coding")
        let imageview1 = UIImageView(image: image1!)
        imageview1.frame = CGRect(x: 0, y: 0, width: 140, height: view1.frame.height)
        view1.addSubview(imageview1)
        
        let name1 = UILabel()
        name1.frame = CGRect(x: 150, y: 5, width: view1.frame.width - 200, height: 50)
        name1.text = "Event  Name"
        name1.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        name1.textColor = UIColor.black
        name1.textAlignment = .center
        view1.addSubview(name1)
        
        let venue1 = UILabel()
        venue1.frame = CGRect(x: 150, y: 35, width: view1.frame.width - 200, height: 50)
        venue1.text = "Venue"
       // venue1.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        venue1.textColor = UIColor.black
        venue1.textAlignment = .center
        view1.addSubview(venue1)
        
        
        let timing1 = UILabel()
        timing1.frame = CGRect(x: 150, y: 65, width: view1.frame.width - 200, height: 50)
        timing1.text = "Timing"
             // venue1.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        timing1.textColor = UIColor.black
        timing1.textAlignment = .center
        view1.addSubview(timing1)
        
        
        
        //MARK:-
    
        let view2 = UIView()
               view2.layer.borderColor = UIColor.blue.cgColor
               view2.layer.borderWidth = 4
               view2.frame  = CGRect(x: 10, y: 220, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view2)
        
        let view3 = UIView()
               view3.layer.borderColor = UIColor.blue.cgColor
               view3.layer.borderWidth = 4
               view3.frame  = CGRect(x: 10, y: 390, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view3)
        
        let view4 = UIView()
               view4.layer.borderColor = UIColor.blue.cgColor
               view4.layer.borderWidth = 4
               view4.frame  = CGRect(x: 10, y: 560, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view4)
        
        let view5 = UIView()
               view5.layer.borderColor = UIColor.blue.cgColor
               view5.layer.borderWidth = 4
               view5.frame  = CGRect(x: 10, y: 730, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view5)
        
        let view6 = UIView()
               view6.layer.borderColor = UIColor.blue.cgColor
               view6.layer.borderWidth = 4
               view6.frame  = CGRect(x: 10, y: 900, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view6)
        
        let view7 = UIView()
               view7.layer.borderColor = UIColor.blue.cgColor
               view7.layer.borderWidth = 4
               view7.frame  = CGRect(x: 10, y: 1070, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view7)
        
        let view8 = UIView()
               view8.layer.borderColor = UIColor.blue.cgColor
               view8.layer.borderWidth = 4
               view8.frame  = CGRect(x: 10, y: 1240, width: view.frame.width-25, height: 150)
               scrollview.addSubview(view8)
        
        
      
       
    }

}
