//
//  CellController.swift
//  IosCLass.Qiaoyu.Liu
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//


import UIKit
class CellController: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Year: UILabel!
    @IBOutlet weak var Author: UILabel!
    @IBOutlet weak var BookImage: UIImageView!
    
     override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

