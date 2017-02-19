//
//  ShopItemManager.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
import SwiftyJSON

class ShopItemManager {
  
  // list may can be an optional if we havent any data
  private var list = [ShopItem]()
 // private var results = Results<ShopItemRealm>()
  
  let realm = (UIApplication.shared.delegate as! AppDelegate).realm
  
  init() {
    updateRealmFromJSON()
    
    requestDataFromDB()
  }
  
  private func updateRealmFromJSON(){
    
    let path = Bundle.main.path(forResource: "catalog", ofType: "json")
    let jsonData : NSData = try! NSData(contentsOfFile: path!)
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
  
  
  private func requestDataFromDB(){
    
    if list.count != 0 {
      list.removeAll()
    }
  
    let results = try! realm.objects(ShopItemRealm.self)
    for item in results {
      let addingItem = ShopItem(itemWithImage: item.image,
                                id: item.id,
                                name: item.name,
                                price: "$" + item.price,
                                details: item.details)
      list.append(addingItem)
    }
  
  }
  
  
  func getList() -> [ShopItem] {
    return list
  }
  func addToList(item: ShopItem) {
    self.list.append(item)
  }
  func deleteItem(at index: Int){
    
    
    try! realm.write {
      
      let results = try! realm.objects(ShopItemRealm.self)
      realm.delete(results[index])
    }
    
    list.remove(at: index)
  }
}















// let suppose that we got the data.
//    let item0 = ShopItem(itemWith: "Globus", price: "$1230", details: "it's a library no one cares globus. Just buy it and thats it.The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.You rarely create instances of the UIViewController class directly. Instead, you create instances of UIViewController subclasses and use those objects to provide the specific behaviors and visual appearances that you need.")
//
//    let item1 = ShopItem(itemWith: "Macbook Prorussian", price: "$20", details: "Very uncommon price. Absolutely new!. Original. Made in Russia.The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.You rarely create instances of the UIViewController class directly. Instead, you create instances of UIViewController subclasses and use those objects to provide the specific behaviors and visual appearances that you need.")
//
//    let item2 = ShopItem(itemWith: "Boxers", price: "$backhamPrice", details: "Price is very Backham. alternative way to spend you earned money.The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.You rarely create instances of the UIViewController class directly. Instead, you create instances of UIViewController subclasses and use those objects to provide the specific behaviors and visual appearances that you need.")
//
//    let item3 = ShopItem(itemWith: "Macbook Prorussian", price: "$20", details: "Very uncommon price. Absolutely new!. Original. Made in Russia")
//
//    let item4 = ShopItem(itemWith: "Globus", price: "$1230", details: "it's a library, no one cares globus. Just buy it and thats it")
//
//    let item5 = ShopItem(itemWith: "Caleidoscope", price: "$999", details: "when you try it you will buy it. just believe me!!")
//
//    let item6 = ShopItem(itemWith: "Caleidoscope", price: "$999", details: "when you try it you will buy it. just believe me!!The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.You rarely create instances of the UIViewController class directly. Instead, you create instances of UIViewController subclasses and use those objects to provide the specific behaviors and visual appearances that you need.")
//
//    list = [item0,item1,item2,item3,item4,item5,item6]
