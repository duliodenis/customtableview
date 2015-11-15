//
//  UglyCell.swift
//  Custom TableView
//
//  Created by Dulio Denis on 11/12/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImage.layer.cornerRadius = 7.0
        mainImage.clipsToBounds = true

    }
    
    func configureCell(image: UIImage, text: String) {
        mainImage.image = image
        mainLabel.text = text
    }

}
