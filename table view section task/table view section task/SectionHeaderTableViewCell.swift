//
//  SectionHeaderTableViewCell.swift
//  table view section task
//
//  Created by Vidyashri on 24/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class SectionHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statusButton: UIButton!
    
    func setExpanded() {
        statusButton.setImage(#imageLiteral(resourceName: "arrowup"), for: .normal)
    }
    
    func setCollapsed() {
        statusButton.setImage(#imageLiteral(resourceName: "arrowdown"), for: .normal)
    }

}
