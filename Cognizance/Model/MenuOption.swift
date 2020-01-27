//
//  MenuOption.swift
//  SideMenuTutorial
//
//  Created by Stephen Dowless on 12/12/18.
//  Copyright © 2018 Stephan Dowless. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case home
    case schedule
    case sponsors
    case contact
    case faq
    case logout
    
    var description: String {
        switch self{
            
        case .home:
            return "HOME"
        case .schedule:
            return "SCHEDULE"
        case .sponsors:
               return "SPONSORS"
        case .contact:
               return "CONTACT US"
        case .faq:
               return "FAQS"
        case .logout:
               return "LOG OUT"
       
        }
    }
    
    var image: UIImage {
        switch self {
        case .home: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .schedule: return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .sponsors: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .faq: return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        case .contact: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .logout: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        }
    }
}
