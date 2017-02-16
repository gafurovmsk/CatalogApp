//
//  ExtensionAddConstraints.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit

extension UIView {
  func addContstraints(withVisualFormat format: String, views: UIView...) {
    var viewsDict = [String: UIView]()
    for (index,view) in views.enumerated() {
      let key = "v\(index)"
      view.translatesAutoresizingMaskIntoConstraints = false
      viewsDict[key] = view
    }
    
    addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
    
  }
  
}
