//
//  BannerTableViewController.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-20.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit

//http://stackoverflow.com/questions/29912852/how-to-show-activity-indicator-while-tableview-loads
class BannerTableViewController: UITableViewController {
    
    var loadingIndicator: UIActivityIndicatorView!
    
    var bannerItems = [BannerModel]()
    var dateString = "Banner"
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear() ")
        
        if bannerItems.count == 0 {
            loadingIndicator.startAnimating()
            loadingIndicator.backgroundColor = UIColor.white
            
            let _ = WebAppClient.sharedInstance().getBannerItems(completionHandler: { (results, date, error) in
                if let error = error {
                    print(error)
                } else {
                    self.bannerItems = results as! [BannerModel]
                    self.dateString = date+" Banner"
                    print("bannerItems length == \(self.bannerItems.count) in table VC")
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        self.navigationItem.title = "TESTING"
                        self.loadingIndicator.stopAnimating()
                        self.loadingIndicator.hidesWhenStopped = true
                    }
                }
            })
        }
    }
    
    override func viewDidLoad() {
        print("viewDidLoad()  ")
        super.viewDidLoad()
        activityIndicator()
    }
    
    func activityIndicator() {
        loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        loadingIndicator.center = self.view.center
        self.view.addSubview(loadingIndicator)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // print("numberOfRowsInSection,  length==\(bannerItems.count)")
        
        
        return bannerItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")!
        
        cell.textLabel?.text = bannerItems[indexPath.row].firstName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "", message: bannerItems[indexPath.row].lastName, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
