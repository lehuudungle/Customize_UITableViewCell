//
//  Customer_TableViewCell.swift
//  Customize_UItableViewcell
//
//  Created by Admin on 2/26/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class Customer_TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgeViewLogo: UIImageView!
    @IBOutlet weak var labelFoodbalClub: UILabel!
    @IBOutlet weak var labelStadium: UILabel!
    @IBOutlet weak var imgViewStarRating: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
