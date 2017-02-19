//
//  ShopItem.swift
//  SomeMarket
//
//  Created by Nik on 18.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation
import RealmSwift

class ShopItem: Object {
  
  dynamic var image: Data = Data()
  dynamic var name = ""
  dynamic var price = ""
  dynamic var details = ""
  
  
  
  
  override var description: String {
    return "the \(self.name) item\n"
      + "with \(self.price) price\n"
      + "and description:\(self.details)\n"
  }
  
}



