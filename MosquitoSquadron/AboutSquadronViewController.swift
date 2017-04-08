//
//  AboutSquadronViewController.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-16.
//  Copyright © 2017 EricWei. All rights reserved.
//

import UIKit

class AboutSquadronViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // MARK: collection view methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AboutSquadronConstants.sharedDataSource().ActivityNames.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AboutViewCell", for: indexPath) as! AboutSquadronViewCell
        
        cell.setCellText(AboutSquadronConstants.sharedDataSource().ActivityNames[indexPath.row])
        
        switch indexPath.row {
        case 0:
            cell.aboutSquadronImage.image = UIImage(named: "friday_night")
        case 1:
            cell.aboutSquadronImage.image = UIImage(named: "aviation")
        case 2:
            cell.aboutSquadronImage.image = UIImage(named: "sports")
        case 3:
            cell.aboutSquadronImage.image = UIImage(named: "band")
        case 4:
            cell.aboutSquadronImage.image = UIImage(named: "drill")
        case 5:
            cell.aboutSquadronImage.image = UIImage(named: "trips")
        default:
            print("image setting failed")
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: AboutSquadronConstants.sharedDataSource().ActivityNames[indexPath.row], message: AboutSquadronConstants.sharedDataSource().ActivityDetails[indexPath.row], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

