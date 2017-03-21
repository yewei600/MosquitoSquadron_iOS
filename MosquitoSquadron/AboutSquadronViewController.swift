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
        return 16
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AboutViewCell", for: indexPath) as! AboutSquadronViewCell
        
        cell.setCellText("Hello World \(indexPath.row)")
        
        return cell
        
    }
   
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("clicked view cell number \(indexPath.row)")
    }


}

