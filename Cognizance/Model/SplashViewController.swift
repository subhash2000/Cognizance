//
//  ViewController.swift
//  Cognizance
//
//  Created by Subhash  on 1/15/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    var gameTimer: Timer! //Timer object

    override func viewDidLoad() {

        super.viewDidLoad()
        let image = UIImage(named: "WhatsApp Image 2020-01-15 at 21.46.01")
               let imageview = UIImageView(image: image!)
               imageview.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
               view.addSubview(imageview)
       showLoginScreen()

    }
    

    //Timer action
    @objc func timeaction(){

        //code for move next VC
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Onboarding") as! Onboarding
        let navigationController = UINavigationController(rootViewController: vc)
        self.present(navigationController, animated: true, completion: nil)
        
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "Onboarding") as! Onboarding
//        self.present(next, animated: true, completion: nil)
        
//       let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                 let vc = storyboard.instantiateViewController(withIdentifier: "Onboarding") as! Onboarding
//                 self.navigationController?.pushViewController(vc, animated: true)
        gameTimer.invalidate()//after that timer invalid

    }
    @objc   func showLoginScreen() {
       
      DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
           let next = self.storyboard?.instantiateViewController(withIdentifier: "Onboarding") as! Onboarding
        next.modalPresentationStyle = .fullScreen
           self.present(next, animated: true, completion: nil)
       }
   
       
    }
}



