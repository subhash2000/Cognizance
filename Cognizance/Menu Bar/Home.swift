//
//  Home.swift
//  Cognizance
//
//  Created by Subhash  on 1/16/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class Home: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.lightGray
utility()
        // Do any additional setup after loading the view.
    }
    
    func utility(){
        let image1 = UIImage(named: "logo")
        let imageview = UIImageView(image: image1!)
        imageview.frame = CGRect(x: 40, y: 90, width: view.frame.width - 80, height: 75)
        view.addSubview(imageview)
        
        //MARK:-
        
        let compimage = UIImage(named: "competition")
     
       let compimageview = UIImageView(image: compimage!)
       compimageview.frame = CGRect(x: 50, y: 200, width: 150, height: 145)
        
        compimageview.layer.borderWidth = 3
       
        compimageview.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(compimageview)
        
        let eventp_Button  = UIButton()
         eventp_Button.frame =  CGRect(x: 50, y: 200, width: 150, height: 145)
       // eventp_Button.setTitle("Botton", for: .normal)
         eventp_Button.addTarget(self, action: #selector(eventButtonAction), for: .touchUpInside)
         view.addSubview(eventp_Button)
        
        
        //MARK:-
        
        let workshopimage = UIImage(named: "WhatsApp Image 2020-01-15 at 21.46.01 (2) copy")
        let workshopimageview = UIImageView(image: workshopimage!)
        workshopimageview.frame = CGRect(x: 220, y: 200, width: 150, height: 145)
        workshopimageview.layer.borderWidth = 3
        workshopimageview.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(workshopimageview)
        
        let workshopButton  = UIButton()
        workshopButton.frame =  CGRect(x: 220, y: 200, width: 150, height: 145)
        workshopButton.addTarget(self, action: #selector(workshopButtonAction(_:)), for: .touchUpInside)
        view.addSubview(workshopButton)
        
        //MARK:-
        let lectureimage = UIImage(named: "Guest_lecture")
        let lectureimageview = UIImageView(image: lectureimage!)
        lectureimageview.frame = CGRect(x: 50, y: 355, width: 150, height: 145)
        lectureimageview.layer.borderWidth = 3
        lectureimageview.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(lectureimageview)
        
        let lecture_Button  = UIButton()
        lecture_Button.frame =  CGRect(x: 50, y: 355, width: 150, height: 145)
        lecture_Button.addTarget(self, action: #selector(lectureButtonAction(_:)), for: .touchUpInside)
        view.addSubview(lecture_Button)
        
        //MARK:-
        
        let exhibition_image = UIImage(named: "exhibition")
        let exhibition_imageview = UIImageView(image: exhibition_image!)
        exhibition_imageview.frame = CGRect(x: 220, y: 355, width: 150, height: 145)
        exhibition_imageview.layer.borderWidth = 3
        exhibition_imageview.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(exhibition_imageview)
        
        let exhi_Button  = UIButton()
        exhi_Button.frame =  CGRect(x: 220, y: 355, width: 150, height: 145)
        exhi_Button.addTarget(self, action: #selector(exhibitionButtonAction(_:)), for: .touchUpInside)
        view.addSubview(exhi_Button)
     //   var tabbar = UITabBarController()
       
        
        
//        let homevc = UINavigationController(rootViewController: Home())
//        homevc.tabBarItem.image = UIImage(named: "Home")
        
//        let mapvc = UINavigationController(rootViewController: MapViewController())
//        mapvc.tabBarItem.image = UIImage(named: "map")
//        
//        let scannervc = UINavigationController(rootViewController: ScannerViewController())
//        scannervc.tabBarItem.image  = UIImage(named: "scanner")
//        
//        viewControllers = [scannervc, mapvc]
       
        
    }
  
    @objc func workshopButtonAction(_ sender: UIButton){
        // print("pressed")
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let vc1 = storyboard.instantiateViewController(withIdentifier: "WorkshopViewController") as! WorkshopViewController
        self.navigationController?.pushViewController(vc1, animated: true)
         // print("pressed 2 ")
    }
    @objc func eventButtonAction(_ sender: UIButton){
          
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let vc2 = storyboard.instantiateViewController(withIdentifier: "EventViewController") as! EventViewController
           self.navigationController?.pushViewController(vc2, animated: true)
            
       }
    @objc func lectureButtonAction(_ sender: UIButton){
        
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let vc3 = storyboard.instantiateViewController(withIdentifier: "GuestLecture") as! GuestLecture
       self.navigationController?.pushViewController(vc3, animated: true)
            
       }
    
    @objc func exhibitionButtonAction(_ sender: UIButton){
           
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let vc4 = storyboard.instantiateViewController(withIdentifier: "ExhibitionViewController") as! ExhibitionViewController
          self.navigationController?.pushViewController(vc4, animated: true)
               
          }
}

