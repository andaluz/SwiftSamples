//
//  SampleCell.swift
//  Swifty
//
//  Created by Nordin on 29/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit

class SampleCell: UITableViewCell {

    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
