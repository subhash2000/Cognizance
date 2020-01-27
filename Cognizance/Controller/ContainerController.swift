//
//  ContainerController.swift
//  SideMenuTutorial
//
//  Created by Stephen Dowless on 12/12/18.
//  Copyright © 2018 Stephan Dowless. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    // MARK: - Properties
    
    var menuController: MenuController!
    var centerController: UIViewController!
    var isExpanded = false
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
     override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
           return .slide
       }
       
       override var prefersStatusBarHidden: Bool {
           return isExpanded
       }
    
    
    func configureHomeController(){
        let homecontroller = Home()
        homecontroller.delegate = self
          centerController  = UINavigationController(rootViewController: homecontroller)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    func configureMenuController(){
        if(menuController == nil){
            menuController = MenuController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("menu ")
            
        }
    }
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?){
        if shouldExpand{
            //show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        }else{
            //hide menu
              UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                         self.centerController.view.frame.origin.x = 0
                     }) { (_) in
                         guard let menuOption = menuOption else { return }
                         self.didSelectMenuOption(menuOption: menuOption)
                     }
        }
        animateStatusBar()
    }
    func didSelectMenuOption(menuOption: MenuOption) {
           switch menuOption {
          
           case .home:
            let next = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! Home
                 next.modalPresentationStyle = .fullScreen
                    self.present(next, animated: true, completion: nil)
           case .schedule:
               print("2")
           case .sponsors:
               print("3")
           case .contact:
               print("4")
           case .faq:
               print("5")
           case .logout:
               print("6")
           
        }
       }
      func animateStatusBar() {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.setNeedsStatusBarAppearanceUpdate()
            }, completion: nil)
        }
    }


extension ContainerController: HomeControllerDelegate {
    func handelMenuToggle(forMenuOption menuOption: MenuOption?) {
         if !isExpanded {
                   configureMenuController()
               }
               
               isExpanded = !isExpanded
               animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
    
 
}
