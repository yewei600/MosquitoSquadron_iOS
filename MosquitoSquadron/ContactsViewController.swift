//
//  ContactsViewController.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-22.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit


class ContactsViewController: UIViewController {
    
    func squadronCellTapped(_ sender: UIGestureRecognizer) {
        
        print("Hello I'm tapped!")
        guard let number = URL(string: "telprompt://" + "6479205799") else {
            return
        }
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
}
