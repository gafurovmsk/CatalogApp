//
//  ItemDetailsViewController.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {
  
  @IBOutlet weak var itemImage: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var priceLabel: UILabel!
  @IBOutlet weak var detailsTextView: UITextView!
  
  var pushedItem: ShopItem?
  
  override func viewDidLoad() {
    super.viewDidLoad()

//    self.navigationController?.navigationBar.barTintColor = .blue
//    self.navigationController?.navigationBar.tintColor = .white
//    self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    self.navigationController?.setNavigationBarHidden(false, animated: true)
    
    if let getItem = pushedItem {
      itemImage.image = UIImage(data:getItem.image)
      nameLabel.text = getItem.name
      priceLabel.text = getItem.price
      detailsTextView.text = getItem.details
    }
  }
  
  open override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
    get {
      return .portrait
    }
  }
}
