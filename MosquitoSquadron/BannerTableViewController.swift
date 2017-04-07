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
    
    override func viewWillAppear(_ animated: Bool) {
        if bannerItems.count == 0 {
            let _ = WebAppClient.sharedInstance().getBannerItems(completionHandler: { (results, error) in
                if let error = error {
                    print(error)
                } else {
                    self.bannerItems = results as! [BannerModel]
                    print("bannerItems length == \(self.bannerItems.count) in table VC")
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // print("numberOfRowsInSection,  length==\(bannerItems.count)")
        return bannerItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! BannerViewCell
        
        cell.masterViewLabel.text = bannerItems[indexPath.row].firstName
        cell.slaveViewLabel.text = bannerItems[indexPath.row].lastName
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
            return 400
        } else {
            return 40
        }
    }
}
