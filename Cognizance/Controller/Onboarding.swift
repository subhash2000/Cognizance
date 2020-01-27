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
      var gameTimer: Timer!
 
    

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
        
      //  gmSignIn.addTarget(self, action: #selector(BtnGamilPressed), for: UIControl.Event.touchUpInside)
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
    var isGooglSigned = false
    
    @objc func BtnGamilPressed() {
           GIDSignIn.sharedInstance()?.presentingViewController = self
           GIDSignIn.sharedInstance()?.restorePreviousSignIn()
           isGooglSigned = false
           let googleUser = GIDSignIn.sharedInstance()?.currentUser
           if googleUser != nil {
               // Get new token from google and send to server
               _ = googleUser?.authentication.idToken
               print("1 ", (googleUser?.profile.imageURL(withDimension: 500)?.absoluteString)!)
               print("2", (googleUser?.profile.email)!)
               Globals.email = (googleUser?.profile.email)!
               Globals.name = (googleUser?.profile.name)!
               Globals.profilePicture = (googleUser?.profile.imageURL(withDimension: 500)?.absoluteString)!
               self.GoToSign2(email : (googleUser?.profile.email)!, name: (googleUser?.profile.name)!)
           } else {
               isGooglSigned = true
               GIDSignIn.sharedInstance().signIn()
           }
       }
    func GoToSign2(email : String, name : String){
          
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let controller = storyboard.instantiateViewController(withIdentifier: "Home")
//               controller.modalPresentationStyle = .fullScreen
               self.present(controller, animated: true, completion: nil)
           
       }
//    @objc func googlebutton(_ sender: UIButton){
//
//          let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "Home") as! Home
//        self.navigationController?.pushViewController(vc, animated: true)
//
//
//    }
    func util(){
        let image1 = UIImage(named: "logo")
        let imageview = UIImageView(image: image1!)
        imageview.frame = CGRect(x: 40, y: 90, width: view.frame.width - 80, height: 75)
        view.addSubview(imageview)
    }

   

}
