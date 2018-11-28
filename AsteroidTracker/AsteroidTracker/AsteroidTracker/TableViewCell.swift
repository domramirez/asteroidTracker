//
//  TableViewCell.swift
//  AsteroidTracker
//
//  Created by Kelly Bauman on 11/2/18.
//  Copyright © 2018 Kelly Bauman. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var NameLabel: UILabel!
    @IBOutlet var MissDistanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
