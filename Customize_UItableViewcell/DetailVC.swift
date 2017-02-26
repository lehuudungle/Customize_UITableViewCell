//
//  DetailVC.swift
//  Customize_UItableViewcell
//
//  Created by Admin on 2/16/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView! // biến này chưa được khởi tạo nó nhận giá trị nil
    var img = UIImage()
    var stringTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        self.imageView.image = img
        self.view.backgroundColor = UIColor.blackColor()
//        self.title = stringTitle
//        self.imageView.image = UIImage(named: "\(stringTitle).jpg")
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.title = stringTitle
        self.imageView.image = UIImage(named: "\(stringTitle).jpg")
    }
}
