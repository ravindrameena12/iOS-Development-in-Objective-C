//
//  TableViewCell.swift
//  UI
//
//  Created by Vidyashri on 16/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var auctionButton: UIButton!
    
    @IBOutlet weak var carimage: UIImageView!
    @IBOutlet weak var carTitle: UILabel!
    @IBOutlet weak var carNumber: UILabel!
    @IBOutlet weak var carFax: UILabel!
    @IBOutlet weak var carData: UILabel!
    @IBOutlet weak var carTotal: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        auctionButton.backgroundColor = .clear
        auctionButton.layer.cornerRadius = 5
        auctionButton.layer.borderWidth = 1
        auctionButton.layer.borderColor = UIColor.black.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
