//
//  ShopItemRealm.swift
//  SomeMarket
//
//  Created by Nik on 18.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import Foundation
import RealmSwift

class ShopItemRealm: Object {
  
  dynamic var id: String = NSUUID().uuidString // id generator will increase copies of json file. will be refactor after adding networking
  dynamic var image: Data = Data()
  dynamic var name = ""
  dynamic var price = ""
  dynamic var details = ""

  override var description: String {
    return "the \(self.name) item\n"
      + "with \(self.price) price\n"
      + "and description:\(self.details)\n"
  }
  
  override static func primaryKey() -> String? {
    return "id"
  }
  
}



