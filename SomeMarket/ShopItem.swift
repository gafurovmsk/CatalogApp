//
//  ShopItem.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation
import UIKit


class ShopItem: NSObject {
  
  var id:String
  var image: Data
  var name: String
  var price: String
  var details: String
  
  init(itemWith id:String, name:String, price: String, details: String){
    self.id = id
    self.name = name
    self.price = price
    self.details = details
    // для ситуации если нет фото
    self.image = UIImagePNGRepresentation(UIImage(named: "blueCart.png")!)!
    
  }
  
  init(itemWithImage image:Data, id:String, name:String, price: String, details: String ){
    self.image = image
    self.id = id
    self.name = name
    self.price = price
    self.details = details
  }
  
  override var description: String {
    return "the \(self.name) item\n"
      + "with \(self.price) price\n"
      + "and description:\(self.details)\n"
  }
  
}
