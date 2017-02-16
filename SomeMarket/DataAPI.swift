//
//  DataAPI.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation


class DataAPI: NSObject {
  
  private let itemManager: ShopItemManager
  private let jsonSerializer: String?
  private let realmBase: String?
  
  static var sharedInstance = DataAPI()
  
  override init (){
  
    itemManager = ShopItemManager()
    jsonSerializer = "Stupid shit"
    realmBase = "we should try"
  }
  
  
  func getCatalogItems() -> [ShopItem] {
    return itemManager.getList()
  }
  
  func deleteItem(at index: Int){
    itemManager.deleteItem(at: index)
  }
  
  func updateItems(){
    // update cash and the data in
   let _ = realmBase?.characters
   let _ = jsonSerializer?.characters
  }
  
}
