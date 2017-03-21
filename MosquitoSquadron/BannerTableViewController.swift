//
//  BannerTableViewController.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-20.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit

class BannerTableViewController: UITableViewController {
    
    var bannerItems = [BannerModel]()
    
    var selectedIndex = -1
    var dataArray: [[String:String]] = [["FirstName":"arun","LastName":"gupta"],["FirstName":"John","LastName":"Cena"],
                                        ["FirstName":"James","LastName":"Bond"],["FirstName":"Iron","LastName":"Man"]]
    
    override func viewWillAppear(_ animated: Bool) {
        if bannerItems.count == 0 {
            bannerItems = WebAppClient.sharedInstance().getBannerItems(completionHandlerForPOST: { (result, error) in
                print("bannerItem == \(self.bannerItems.count)")
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! BannerViewCell
        
        let obj = dataArray[indexPath.row]
        cell.masterViewLabel.text = obj["FirstName"]
        cell.slaveViewLabel.text = obj["LastName"]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(selectedIndex==indexPath.row) {
            selectedIndex = -1
        } else {
            selectedIndex = indexPath.row
        }
        self.tableView.beginUpdates()
        self.tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        self.tableView.endUpdates()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndex == indexPath.row {
            return 100
        } else {
            return 40
        }
        
    }
    
}
