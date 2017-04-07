//
//  WebAppClient.swift
//  MosquitoSquadron
//
//  Created by Eric Wei on 2017-03-17.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit

class WebAppClient: NSObject {
    
    //MARK: Properties
    
    //shared session
    var session = URLSession.shared
    
    //MARK: Get
    func getBannerItems(completionHandler: @escaping (_ results: Any?,_ error: NSError?) -> Void) -> URLSessionTask{
        var parsedResult: Any! = nil
        var bannerItems = [BannerModel]()
        
        let request = URLRequest(url: constructURL())
        
        let task = session.dataTask(with: request) {(data, response, error) in
            func sendError(_ error: String) {
                //let userInfo = [NSLocalizedDescriptionKey : error]
                //completionHandlerForPOST(false, NSError(domain: "getBannerItems", code: 1, userInfo: userInfo))
                return
            }
            guard (error == nil) else {
                sendError("There was an error with your request: \(error)")
                return
            }
            
            guard let data = data else{
                sendError("No data was returned by the request!")
                return
            }
            
            do {
                print("parsing JSON")
                parsedResult = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as Any
                
                if let results = parsedResult as? [[String:String]] {
                    for result in results {
                        bannerItems.append(BannerModel(dictionary: result))
                    }
                    print("EARLIER get() bannerItem.length==\(bannerItems.count)")
                }
            } catch {
                print("Error getting banners")
                //let userInfo = [NSLocalizedDescriptionKey : "Could not parse the data as JSON: '\(data)'"]
                // completionHandlerForConvertData(nil, NSError(domain: "convertDataWithCompletionHandler", code: 1, userInfo: userInfo))
            }
            completionHandler(bannerItems, nil)
        }
        task.resume()
        
        return task
    }
    
    // create a URL from parameters
    private func constructURL() -> URL {
        var components = URLComponents()
        components.scheme = WebAppClient.Constants.ApiScheme
        components.host = WebAppClient.Constants.ApiHost
        components.path = WebAppClient.Constants.ApiPath
        
        return components.url!
    }
    
    //MARK: Shared Instance
    class func sharedInstance() -> WebAppClient {
        struct Singleton {
            static var sharedInstance = WebAppClient()
        }
        return Singleton.sharedInstance
    }
    
}
