//
//  ShopItemManager.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation

class ShopItemManager: NSObject {
  
  // list may can be an optional if we havent any data
  private var list = [ShopItem]()
  
  // some realm property
  
  
  override init() {
    
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
  }
  func getList() -> [ShopItem] {
    return list
  }
  func addToList(item: ShopItem) {
    self.list.append(item)
  }
  func deleteItem(at index: Int){
    list.remove(at: index)
  }
}
