//
//  MapsTableViewController.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-18.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapsTableViewController: UITableViewController {
    
    let locations = ["Glenview Senior Public School","Denison Armoury","HMCS York","Royal Canadian Legion Branch 66","Douglas Snow Aquatic Centre"]
    let locationAddresses = ["401 Rosewell Ave", "1 Yukon Ln", "659 Lake Shore Blvd W", "6 Spring Garden Ave", "5100 Yonge St"]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear MapsTableVC()")
    }
    
    // MARK: tableviews
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MapCell")!
        cell.textLabel?.text = locations[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let geocoder = CLGeocoder()
        var placemark: CLPlacemark? = nil
        
        
        geocoder.geocodeAddressString(locationAddresses[indexPath.row]+", Toronto ON", completionHandler: { (results, error) in
            print("placemark is \(results![0])")
            placemark = results?[0]
            let mkPlacemark = MKPlacemark(coordinate: (placemark?.location?.coordinate)!, addressDictionary: nil)
            let mapitem = MKMapItem(placemark: mkPlacemark)
            let options = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
            mapitem.openInMaps(launchOptions: options)
        })
    }
    
}
