//
//  TableViewCell.swift
//  IOS_Task
//
//  Created by Heema Boss on 2/20/18.
//  Copyright © 2018 Heema Boss. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ipSubnetMask: UILabel!
    @IBOutlet weak var ipAddress: UILabel!
    @IBOutlet weak var Lbl_CBU: UILabel!
    @IBOutlet weak var imageServer: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      
        imageServer.layer.cornerRadius = imageServer.frame.size.width/2
        imageServer.clipsToBounds = true
        
        Lbl_CBU.layer.masksToBounds = true
        Lbl_CBU.layer.cornerRadius = 5
    }
}



