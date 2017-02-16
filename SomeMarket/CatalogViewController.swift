//
//  ViewController.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit

class CatalogViewController: UIViewController {

  let catalogCellId = "catalogItem"
  let pushSegueId = "showDetails"
  
  var catalogItemList = [ShopItem]()
  
  @IBOutlet weak var catalogTableView: UITableView!
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.setNavigationBarHidden(true, animated: true)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
   // UINavigationBar
  
    catalogItemList = DataAPI.sharedInstance.getCatalogItems()
    
    self.catalogTableView.register(CatalogTVCell.self, forCellReuseIdentifier: catalogCellId)
    
  }
  
  
  

  

}


