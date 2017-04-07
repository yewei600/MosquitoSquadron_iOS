//
//  BannerViewCell.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-18.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit

class BannerViewCell: UITableViewCell {
    
    @IBOutlet weak var masterView: UIView!
    @IBOutlet weak var masterViewLabel: UILabel!
    @IBOutlet weak var slaveView: UIView!
    @IBOutlet weak var slaveTextView: UITextView!
    
    @IBOutlet weak var slaveHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //configure the view for the selected state
        
    }
    var showsDetails = false {
        didSet {
            slaveHeightConstraint.priority = showsDetails ? 250: 999
        }
    }
}
