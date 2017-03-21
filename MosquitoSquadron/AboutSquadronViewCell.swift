//
//  AboutSquadronViewCell.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-17.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit

class AboutSquadronViewCell: UICollectionViewCell {
    
    @IBOutlet weak var aboutSqudaronLabel: UILabel!
    
    func setCellText(_ text: String?) {
        self.aboutSqudaronLabel.text = text
    }
}
