//
//  ExtensionCatalogVC.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit

extension CatalogViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return catalogItemList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell:CatalogTVCell = catalogTableView.dequeueReusableCell(withIdentifier: self.catalogCellId)!  as! CatalogTVCell
    let fetchItem = catalogItemList[indexPath.row]
    
    //    if let image = fetchItem.image {
    //      cell.itemImage.image = UIImage(data: image)!
    //    } else {
    //      cell.itemImage.image = UIImage(named: "blueCart.png")
    //    }
    // alternating contentview background of tableview cells
    //cell.contentView.backgroundColor = (indexPath.row % 2 == 0) ? tableColor.dark : tableColor.light
    
    // constraints check
    //cell.itemImage.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.green : UIColor.red
    
    cell.itemImage.image = UIImage(data: fetchItem.image)
    cell.nameLabel.text = fetchItem.name
    cell.detailsLabel.text = fetchItem.details
    cell.priceLabel.text = fetchItem.price
    return cell
  }
  
  struct tableColor {
    static let light = UIColor(colorLiteralRed: 197/255, green: 239/255, blue: 247/255, alpha: 1)
    static let dark = UIColor(colorLiteralRed: 137/255, green: 196/255, blue: 244/255, alpha: 1)
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    // let pushedItem = self.catalogItemList[indexPath.row]
    performSegue(withIdentifier: pushSegueId, sender: self)
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    let detailsVC = segue.destination as! ItemDetailsViewController
    let indexPath = self.catalogTableView.indexPathForSelectedRow!
    detailsVC.pushedItem = self.catalogItemList[indexPath.row]
  }
  
  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    
    let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.destructive, title: "Delete") { (deleteAction, indexPath) -> Void in
      DataAPI.sharedInstance.deleteItem(at: indexPath.row)
    }
    return [deleteAction]
  }
  
}




