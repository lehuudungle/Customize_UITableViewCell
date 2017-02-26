//
//  DataItem.swift
//  Customize_UItableViewcell
//
//  Created by Admin on 2/16/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
class DataItem{
    
    var imageLogo: UIImage!
    var nameFootballClub: String!
    var nameStadium: String!
    var imageStarRating: UIImage!
    
    init(nameFC: String, nameStd: String,imgLogo: String, imgStar: Int){
        self.imageLogo = UIImage(named: imgLogo)
        self.imageStarRating = UIImage(named: "\(imgStar)stars.png")
        self.nameFootballClub = nameFC
        self.nameStadium = nameStd
        
    }
    

}
