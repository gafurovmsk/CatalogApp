//
//  CatalogTVCell.swift
//  SomeMarket
//
//  Created by Nik on 15.02.17.
//  Copyright © 2017 Gafurov. All rights reserved.
//

import UIKit

class CatalogTVCell: UITableViewCell {
  
  var itemImage = UIImageView()
  let nameLabel = UILabel()
  let detailsLabel = UILabel()
  let priceLabel = UILabel()
  let priceWord = UILabel()
  let deviderLineView = UIView()
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupConstraints()
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupConstraints(){
    
   
    itemImage.contentMode = .scaleAspectFill
   // itemImage.clipsToBounds = true
   // itemImage.layer.masksToBounds = true
    
    nameLabel.font = TestFont.forName()
    
    detailsLabel.font = TestFont.forDetails()
    detailsLabel.numberOfLines = 2
    
    priceLabel.font = TestFont.forPrice()
    priceLabel.textAlignment = .right
    // различные варианты обращения к шрифту
    priceWord.font = TestFont.regular(size: 15)
    priceWord.text = "Price:"
    
    deviderLineView.backgroundColor = UIColor(red: 226/255, green: 238/255, blue: 232/255,alpha: 1)
    
    contentView.addSubview(itemImage)
    contentView.addSubview(nameLabel)
    contentView.addSubview(detailsLabel)
    contentView.addSubview(priceLabel)
    contentView.addSubview(priceWord)
    contentView.addSubview(deviderLineView)
    
  
    let scrWidth = UIScreen.main.bounds.width
    
    contentView.addContstraints(withVisualFormat: "|[v0(\(scrWidth * 0.24))]-[v1]-[v2(0.4)][v3(\(scrWidth * 0.2))]|", views: itemImage,nameLabel,deviderLineView,priceWord)
    contentView.addContstraints(withVisualFormat: "|[v0]-[v1]-[v2(0.4)][v3(\(scrWidth * 0.2))]-|", views: itemImage,detailsLabel,deviderLineView,priceLabel)
    contentView.addContstraints(withVisualFormat: "V:|-4-[v0]-4-|", views: itemImage)
    contentView.addContstraints(withVisualFormat: "V:|-4-[v0]-[v1]", views: nameLabel,detailsLabel)
    contentView.addContstraints(withVisualFormat: "V:|-4-[v0]-[v1]", views: priceWord,priceLabel)
    contentView.addContstraints(withVisualFormat: "V:|-4-[v0]-4-|", views: deviderLineView)
  }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



