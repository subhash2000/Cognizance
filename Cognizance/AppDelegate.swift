//
//  AppDelegate.swift
//  Cognizance
//
//  Created by Subhash  on 1/15/20.
//  Copyright © 2020 Subhash . All rights reserved.
//

import UIKit
import GoogleSignIn
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if let error = error {
//            print("0")
//          if (error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue {
//            print("The user has not signed in before or they have since signed out.")
//          } else {
//            print("\(error.localizedDescription)")
//          }
//
//        }
//        else{
//            print("1")
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                       let tabbarVC = storyboard.instantiateViewController(withIdentifier: "Home") as! Home
//                       //self.present(tabbarVC, animated: false, completion: nil)
//            self.window?.rootViewController?.present(tabbarVC, animated: false, completion: nil)
//
//        }
//
//        // Perform any operations on signed in user here.
//        let userId = user.userID                  // For client-side use only!
//        let idToken = user.authentication.idToken // Safe to send to the server
//        let fullName = user.profile.name
//        let givenName = user.profile.givenName
//        let familyName = user.profile.familyName
//        let email = user.profile.email
//    }
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
       
            let googleUser = GIDSignIn.sharedInstance()?.currentUser
            if googleUser != nil {
             let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let tabbarVC = storyboard.instantiateViewController(withIdentifier: "Home") as! Home
          //  self.present(tabbarVC, animated: false, completion: nil)
                     self.window?.rootViewController?.present(tabbarVC, animated: false, completion: nil)
            }
        }
    
 
   
var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        window = UIWindow(frame: UIScreen.main.bounds)
//               window?.makeKeyAndVisible()
//
//               let mainVC = Home()
//               window?.rootViewController = mainVC
        GIDSignIn.sharedInstance()?.clientID =  "356037148112-rtiptdd2fe7jlvj4vnci5rg7m2e9kjuf.apps.googleusercontent.com"
        GIDSignIn.sharedInstance()?.delegate = self
        return true
    }
    
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
      NotificationCenter.default.post(
             name: Notification.Name(rawValue: "ToggleAuthUINotification"),
             object: nil,
             userInfo: ["statusText": "User has disconnected."])
    }
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

