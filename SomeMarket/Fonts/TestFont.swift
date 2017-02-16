//
//  TestFont.swift
//  junior test app
//
//  Created by alex on 15/02/2017.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

struct TestFont {
  
  static var nameSize:CGFloat{return 17}
  static var priceSize:CGFloat{return 18}
  static var detailsSize:CGFloat{return 12}
  static var fullDetailsSize:CGFloat{return 14}
  
  static func regular(size: CGFloat) -> UIFont {
    return UIFont(name: segoeRegular, size: size)!
  }
  
  static func light(size: CGFloat) -> UIFont {
    return UIFont(name: segoeLight, size: size)!
  }
  
  static func italic(size: CGFloat) -> UIFont {
    return UIFont(name: segoeItalic, size: size)!
  }
  
  static func forName() -> UIFont {
    return UIFont(name: segoeRegular, size: TestFont.nameSize)!
  }
  
  static func forPrice() -> UIFont {
    return UIFont(name: segoeItalic, size: priceSize)!
  }
  
  static func forDetails() -> UIFont {
    return UIFont(name: segoeLight, size: detailsSize)!
  }

  static func about(size: CGFloat) -> UIFont {
    return UIFont(name: "HelveticaNeue", size: size)!
  }
  
  static func details(size: CGFloat) -> UIFont {
    return UIFont(name: "HelveticaNeue", size: size)!
  }
  
  static let segoeLight = "SegoeUI-Light"
  static let segoeItalic = "SegoeUI-Italic"
  static let segoeRegular = "SegoeUI"
}
