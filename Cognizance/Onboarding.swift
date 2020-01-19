//
//  Onboarding.swift
//  Cognizance
//
//  Created by Subhash  on 1/15/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit
import GoogleSignIn



class Onboarding: UIViewController {
   
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // self.view.backgroundColor = UIColor.gray
        // Do any additional setup after loading the view.
       GIDSignIn.sharedInstance()?.presentingViewController = self

         // Automatically sign in the user.
         GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        print("1")
        let  gmSignIn = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 238, height: 50))
        gmSignIn.center = view.center
        gmSignIn.addTarget(self, action: #selector(googlebutton(_:)), for: UIControl.Event.touchUpInside)
        print("2")
        view.addSubview(gmSignIn)
//        let button = UIButton()
//        button.frame = CGRect(x: 30, y: 200, width: 100, height: 30)
//       button.backgroundColor = .clear
//               button.contentHorizontalAlignment = .left;
//               button.setTitle( "Edit Profile", for: .normal)
//               button.setTitleColor(Colors.blueText, for: .normal)
//               button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 15)
//        button.addTarget(self, action: #selector(googlebutton(_:)), for: UIControl.Event.touchUpInside)
//        view.addSubview(button)
        util()
    }
    @objc func googlebutton(_ sender: UIButton){
       // print("pressed")
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeID") as! Home
        self.navigationController?.pushViewController(vc, animated: true)
        
      //  print("end press")
    }
    func util(){
        let image1 = UIImage(named: "logo")
        let imageview = UIImageView(image: image1!)
        imageview.frame = CGRect(x: 40, y: 90, width: view.frame.width - 80, height: 75)
        view.addSubview(imageview)
    }

   

}
