//
//  ViewController.swift
//  Cognizance
//
//  Created by Subhash  on 1/15/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameTimer: Timer! //Timer object

    override func viewDidLoad() {

        super.viewDidLoad()
        let image = UIImage(named: "WhatsApp Image 2020-01-15 at 21.46.01")
               let imageview = UIImageView(image: image!)
               imageview.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
               view.addSubview(imageview)
        gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timeaction), userInfo: nil, repeats: true)

    }

    //Timer action
    @objc func timeaction(){

        //code for move next VC
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "Onboarding") as! Onboarding
                self.navigationController?.pushViewController(secondVC, animated: true)
        gameTimer.invalidate()//after that timer invalid

    }
   
       
    }
  



