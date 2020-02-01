//
//  MapViewController.swift
//  Cognizance
//
//  Created by Subhash  on 1/28/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit
private let reuseIdentifer = "MapCellTableViewCell"
class MapViewController: UIViewController {
let list = ["MAC","LHC","Govind Bhawan"]
    override func viewDidLoad() {
        super.viewDidLoad()
    view.backgroundColor = UIColor.white
        
      //  navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "CLICK PLACE TO GET NOTIFICATION"
        navigationController?.navigationBar.tintColor = UIColor.blue
        setupplaces()
        
    }
    @objc func openUrl() {
        print("pressed")
    if let url = NSURL(string: "www.google.com"){
        UIApplication.shared.openURL(url as URL)
        }
    }
    
    
    func setupplaces(){
        let scrollview = UIScrollView()
        view.addSubview(scrollview)
        scrollview.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        scrollview.contentSize = CGSize(width: view.frame.width, height: 1500)

      //MARK:-
        
        let mac = UIView()
        mac.frame = CGRect(x: 20, y: 20, width: view.frame.width-40, height: 60)
        mac.layer.borderWidth = 5
        mac.layer.borderColor = UIColor.blue.cgColor
        scrollview.addSubview(mac)
        
        let button = UIButton()
        button.frame = CGRect(x: 20, y: 20, width: view.frame.width-40, height: 60)
        button.addTarget(self, action: #selector(openUrl), for: .touchUpInside)
        view.addSubview(button)
        

        let maclabel = UILabel()
        maclabel.text = "Multy Activity Centre"
        maclabel.frame = CGRect(x: 10, y: 10, width: view.frame.width-20, height: 40)
        maclabel.textColor = UIColor.blue
        maclabel.textAlignment = .center
        maclabel.font = UIFont(name: "Times New Roman", size: 25)
        mac.addSubview(maclabel)
        
        //MARK:-
        let LHC = UIView()
        LHC.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 60)
        LHC.layer.borderWidth = 5
        LHC.layer.borderColor = UIColor.blue.cgColor
        scrollview.addSubview(LHC)

        let LHCLabel = UILabel()
        LHCLabel.text = "Lecture Hall Complex"
        LHCLabel.frame = CGRect(x: 10, y: 10, width: view.frame.width-20, height: 40)
        LHCLabel.textColor = UIColor.blue
        LHCLabel.textAlignment = .center
        LHCLabel.font = UIFont(name: "Times New Roman", size: 25)
        LHC.addSubview(LHCLabel)
        
        
//        let question = UITableView()
//        question.dataSource = self
//        question.delegate = self
//        question.translatesAutoresizingMaskIntoConstraints = false
//        question.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 1000)
//        question.layer.borderWidth = 0
//        question.layer.borderColor = UIColor.lightGray.cgColor
//        question.register(MapCellTableViewCell.self, forCellReuseIdentifier: reuseIdentifer)
//        question.allowsSelectionDuringEditing = false
//        question.allowsSelection = false
//        //question.layer.borderWidth = 4
//        //question.layer.borderColor = UIColor.blue.cgColor
//        view.addSubview(question)
        
    
        
    }


}

extension MapViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MapCellTableViewCell
        cell.placelabel.text = list[indexPath.row]
        cell.placelabel.textAlignment = .center
        cell.contentView.layer.borderWidth = 1
        cell.contentView.layer.borderColor = UIColor.blue.cgColor
   // print("cell taken")
                   
                return cell
    }
   
  
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
      {
          return 75 //or whatever you need
      }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 50
       }
 
    
}
