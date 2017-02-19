//
//  AppDelegate.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit
import RealmSwift
import SwiftyJSON

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  var realm = try! Realm()

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    
    
   updateRealmFromJSON()
    
    
    return true
  }
  
  
  func updateRealmFromJSON(){
    
    let path = Bundle.main.path(forResource: "catalog", ofType: "json")
    let jsonData : NSData = try! NSData.init(contentsOfFile: path!)
    var json = JSON(data: jsonData as Data)
    
    let images = json["products"].arrayValue.map({$0["desktop_image"].stringValue})
    let names =  json["products"].arrayValue.map({$0["title"].stringValue})
    let prices = json["products"].arrayValue.map({$0["price"]["regular"].stringValue})
    let details = json["products"].arrayValue.map({$0["detail"].stringValue})
    
    for index in 0 ..< images.count {
      
      let item = ShopItemRealm()
      item.image = UIImagePNGRepresentation(UIImage(named: "blueCart.png")!)!
      item.name = names[index]
      item.price = prices[index]
      item.details = details[index]
      try! realm.write {
        realm.add(item,update: true)
      }
    }
    
    

  }
  
  
  
  
  
  

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

